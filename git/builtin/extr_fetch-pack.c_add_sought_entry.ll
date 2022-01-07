; ModuleID = '/home/carl/AnghaBench/git/builtin/extr_fetch-pack.c_add_sought_entry.c'
source_filename = "/home/carl/AnghaBench/git/builtin/extr_fetch-pack.c_add_sought_entry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ref = type { i32 }
%struct.object_id = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ref***, i32*, i32*, i8*)* @add_sought_entry to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @add_sought_entry(%struct.ref*** %0, i32* %1, i32* %2, i8* %3) #0 {
  %5 = alloca %struct.ref***, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca %struct.ref*, align 8
  %10 = alloca %struct.object_id, align 4
  %11 = alloca i8*, align 8
  store %struct.ref*** %0, %struct.ref**** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32* %2, i32** %7, align 8
  store i8* %3, i8** %8, align 8
  %12 = load i8*, i8** %8, align 8
  %13 = call i32 @parse_oid_hex(i8* %12, %struct.object_id* %10, i8** %11)
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %33, label %15

15:                                               ; preds = %4
  %16 = load i8*, i8** %11, align 8
  %17 = load i8, i8* %16, align 1
  %18 = sext i8 %17 to i32
  %19 = icmp eq i32 %18, 32
  br i1 %19, label %20, label %23

20:                                               ; preds = %15
  %21 = load i8*, i8** %11, align 8
  %22 = getelementptr inbounds i8, i8* %21, i64 1
  store i8* %22, i8** %8, align 8
  br label %32

23:                                               ; preds = %15
  %24 = load i8*, i8** %11, align 8
  %25 = load i8, i8* %24, align 1
  %26 = sext i8 %25 to i32
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %28, label %29

28:                                               ; preds = %23
  br label %31

29:                                               ; preds = %23
  %30 = call i32 @oidclr(%struct.object_id* %10)
  br label %31

31:                                               ; preds = %29, %28
  br label %32

32:                                               ; preds = %31, %20
  br label %35

33:                                               ; preds = %4
  %34 = call i32 @oidclr(%struct.object_id* %10)
  br label %35

35:                                               ; preds = %33, %32
  %36 = load i8*, i8** %8, align 8
  %37 = call %struct.ref* @alloc_ref(i8* %36)
  store %struct.ref* %37, %struct.ref** %9, align 8
  %38 = load %struct.ref*, %struct.ref** %9, align 8
  %39 = getelementptr inbounds %struct.ref, %struct.ref* %38, i32 0, i32 0
  %40 = call i32 @oidcpy(i32* %39, %struct.object_id* %10)
  %41 = load i32*, i32** %6, align 8
  %42 = load i32, i32* %41, align 4
  %43 = add nsw i32 %42, 1
  store i32 %43, i32* %41, align 4
  %44 = load %struct.ref***, %struct.ref**** %5, align 8
  %45 = load %struct.ref**, %struct.ref*** %44, align 8
  %46 = load i32*, i32** %6, align 8
  %47 = load i32, i32* %46, align 4
  %48 = load i32*, i32** %7, align 8
  %49 = load i32, i32* %48, align 4
  %50 = call i32 @ALLOC_GROW(%struct.ref** %45, i32 %47, i32 %49)
  %51 = load %struct.ref*, %struct.ref** %9, align 8
  %52 = load %struct.ref***, %struct.ref**** %5, align 8
  %53 = load %struct.ref**, %struct.ref*** %52, align 8
  %54 = load i32*, i32** %6, align 8
  %55 = load i32, i32* %54, align 4
  %56 = sub nsw i32 %55, 1
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds %struct.ref*, %struct.ref** %53, i64 %57
  store %struct.ref* %51, %struct.ref** %58, align 8
  ret void
}

declare dso_local i32 @parse_oid_hex(i8*, %struct.object_id*, i8**) #1

declare dso_local i32 @oidclr(%struct.object_id*) #1

declare dso_local %struct.ref* @alloc_ref(i8*) #1

declare dso_local i32 @oidcpy(i32*, %struct.object_id*) #1

declare dso_local i32 @ALLOC_GROW(%struct.ref**, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
