; ModuleID = '/home/carl/AnghaBench/git/builtin/extr_index-pack.c_mark_link.c'
source_filename = "/home/carl/AnghaBench/git/builtin/extr_index-pack.c_mark_link.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.object = type { i32, i32, i32 }
%struct.fsck_options = type { i32 }

@OBJ_ANY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"object type mismatch at %s\00", align 1
@FLAG_LINK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.object*, i32, i8*, %struct.fsck_options*)* @mark_link to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mark_link(%struct.object* %0, i32 %1, i8* %2, %struct.fsck_options* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.object*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca %struct.fsck_options*, align 8
  store %struct.object* %0, %struct.object** %6, align 8
  store i32 %1, i32* %7, align 4
  store i8* %2, i8** %8, align 8
  store %struct.fsck_options* %3, %struct.fsck_options** %9, align 8
  %10 = load %struct.object*, %struct.object** %6, align 8
  %11 = icmp ne %struct.object* %10, null
  br i1 %11, label %13, label %12

12:                                               ; preds = %4
  store i32 -1, i32* %5, align 4
  br label %35

13:                                               ; preds = %4
  %14 = load i32, i32* %7, align 4
  %15 = load i32, i32* @OBJ_ANY, align 4
  %16 = icmp ne i32 %14, %15
  br i1 %16, label %17, label %29

17:                                               ; preds = %13
  %18 = load %struct.object*, %struct.object** %6, align 8
  %19 = getelementptr inbounds %struct.object, %struct.object* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = load i32, i32* %7, align 4
  %22 = icmp ne i32 %20, %21
  br i1 %22, label %23, label %29

23:                                               ; preds = %17
  %24 = call i32 @_(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  %25 = load %struct.object*, %struct.object** %6, align 8
  %26 = getelementptr inbounds %struct.object, %struct.object* %25, i32 0, i32 2
  %27 = call i32 @oid_to_hex(i32* %26)
  %28 = call i32 @die(i32 %24, i32 %27)
  br label %29

29:                                               ; preds = %23, %17, %13
  %30 = load i32, i32* @FLAG_LINK, align 4
  %31 = load %struct.object*, %struct.object** %6, align 8
  %32 = getelementptr inbounds %struct.object, %struct.object* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = or i32 %33, %30
  store i32 %34, i32* %32, align 4
  store i32 0, i32* %5, align 4
  br label %35

35:                                               ; preds = %29, %12
  %36 = load i32, i32* %5, align 4
  ret i32 %36
}

declare dso_local i32 @die(i32, i32) #1

declare dso_local i32 @_(i8*) #1

declare dso_local i32 @oid_to_hex(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
