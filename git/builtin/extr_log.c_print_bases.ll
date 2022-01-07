; ModuleID = '/home/carl/AnghaBench/git/builtin/extr_log.c_print_bases.c'
source_filename = "/home/carl/AnghaBench/git/builtin/extr_log.c_print_bases.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.base_tree_info = type { i32, i32, i64, i32* }

@.str = private unnamed_addr constant [18 x i8] c"\0Abase-commit: %s\0A\00", align 1
@.str.1 = private unnamed_addr constant [27 x i8] c"prerequisite-patch-id: %s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.base_tree_info*, i32*)* @print_bases to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @print_bases(%struct.base_tree_info* %0, i32* %1) #0 {
  %3 = alloca %struct.base_tree_info*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  store %struct.base_tree_info* %0, %struct.base_tree_info** %3, align 8
  store i32* %1, i32** %4, align 8
  %6 = load %struct.base_tree_info*, %struct.base_tree_info** %3, align 8
  %7 = getelementptr inbounds %struct.base_tree_info, %struct.base_tree_info* %6, i32 0, i32 1
  %8 = call i64 @is_null_oid(i32* %7)
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %11

10:                                               ; preds = %2
  br label %49

11:                                               ; preds = %2
  %12 = load i32*, i32** %4, align 8
  %13 = load %struct.base_tree_info*, %struct.base_tree_info** %3, align 8
  %14 = getelementptr inbounds %struct.base_tree_info, %struct.base_tree_info* %13, i32 0, i32 1
  %15 = call i8* @oid_to_hex(i32* %14)
  %16 = call i32 @fprintf(i32* %12, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), i8* %15)
  %17 = load %struct.base_tree_info*, %struct.base_tree_info** %3, align 8
  %18 = getelementptr inbounds %struct.base_tree_info, %struct.base_tree_info* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = sub nsw i32 %19, 1
  store i32 %20, i32* %5, align 4
  br label %21

21:                                               ; preds = %34, %11
  %22 = load i32, i32* %5, align 4
  %23 = icmp sge i32 %22, 0
  br i1 %23, label %24, label %37

24:                                               ; preds = %21
  %25 = load i32*, i32** %4, align 8
  %26 = load %struct.base_tree_info*, %struct.base_tree_info** %3, align 8
  %27 = getelementptr inbounds %struct.base_tree_info, %struct.base_tree_info* %26, i32 0, i32 3
  %28 = load i32*, i32** %27, align 8
  %29 = load i32, i32* %5, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds i32, i32* %28, i64 %30
  %32 = call i8* @oid_to_hex(i32* %31)
  %33 = call i32 @fprintf(i32* %25, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0), i8* %32)
  br label %34

34:                                               ; preds = %24
  %35 = load i32, i32* %5, align 4
  %36 = add nsw i32 %35, -1
  store i32 %36, i32* %5, align 4
  br label %21

37:                                               ; preds = %21
  %38 = load %struct.base_tree_info*, %struct.base_tree_info** %3, align 8
  %39 = getelementptr inbounds %struct.base_tree_info, %struct.base_tree_info* %38, i32 0, i32 3
  %40 = load i32*, i32** %39, align 8
  %41 = call i32 @free(i32* %40)
  %42 = load %struct.base_tree_info*, %struct.base_tree_info** %3, align 8
  %43 = getelementptr inbounds %struct.base_tree_info, %struct.base_tree_info* %42, i32 0, i32 0
  store i32 0, i32* %43, align 8
  %44 = load %struct.base_tree_info*, %struct.base_tree_info** %3, align 8
  %45 = getelementptr inbounds %struct.base_tree_info, %struct.base_tree_info* %44, i32 0, i32 2
  store i64 0, i64* %45, align 8
  %46 = load %struct.base_tree_info*, %struct.base_tree_info** %3, align 8
  %47 = getelementptr inbounds %struct.base_tree_info, %struct.base_tree_info* %46, i32 0, i32 1
  %48 = call i32 @oidclr(i32* %47)
  br label %49

49:                                               ; preds = %37, %10
  ret void
}

declare dso_local i64 @is_null_oid(i32*) #1

declare dso_local i32 @fprintf(i32*, i8*, i8*) #1

declare dso_local i8* @oid_to_hex(i32*) #1

declare dso_local i32 @free(i32*) #1

declare dso_local i32 @oidclr(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
