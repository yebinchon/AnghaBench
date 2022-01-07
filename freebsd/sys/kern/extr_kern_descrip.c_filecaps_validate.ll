; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_kern_descrip.c_filecaps_validate.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_kern_descrip.c_filecaps_validate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.filecaps = type { i32, i32, i32, i32* }

@.str = private unnamed_addr constant [19 x i8] c"%s: invalid rights\00", align 1
@CAP_FCNTL_ALL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [19 x i8] c"%s: invalid fcntls\00", align 1
@CAP_FCNTL = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [29 x i8] c"%s: fcntls without CAP_FCNTL\00", align 1
@.str.3 = private unnamed_addr constant [19 x i8] c"%s: invalid ioctls\00", align 1
@CAP_IOCTL = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [29 x i8] c"%s: ioctls without CAP_IOCTL\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.filecaps*, i8*)* @filecaps_validate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @filecaps_validate(%struct.filecaps* %0, i8* %1) #0 {
  %3 = alloca %struct.filecaps*, align 8
  %4 = alloca i8*, align 8
  store %struct.filecaps* %0, %struct.filecaps** %3, align 8
  store i8* %1, i8** %4, align 8
  %5 = load %struct.filecaps*, %struct.filecaps** %3, align 8
  %6 = getelementptr inbounds %struct.filecaps, %struct.filecaps* %5, i32 0, i32 2
  %7 = call i32 @cap_rights_is_valid(i32* %6)
  %8 = load i8*, i8** %4, align 8
  %9 = call i32 @KASSERT(i32 %7, i8* %8)
  %10 = load %struct.filecaps*, %struct.filecaps** %3, align 8
  %11 = getelementptr inbounds %struct.filecaps, %struct.filecaps* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = load i32, i32* @CAP_FCNTL_ALL, align 4
  %14 = xor i32 %13, -1
  %15 = and i32 %12, %14
  %16 = icmp eq i32 %15, 0
  %17 = zext i1 %16 to i32
  %18 = load i8*, i8** %4, align 8
  %19 = call i32 @KASSERT(i32 %17, i8* %18)
  %20 = load %struct.filecaps*, %struct.filecaps** %3, align 8
  %21 = getelementptr inbounds %struct.filecaps, %struct.filecaps* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %30, label %24

24:                                               ; preds = %2
  %25 = load %struct.filecaps*, %struct.filecaps** %3, align 8
  %26 = getelementptr inbounds %struct.filecaps, %struct.filecaps* %25, i32 0, i32 2
  %27 = load i32, i32* @CAP_FCNTL, align 4
  %28 = call i64 @cap_rights_is_set(i32* %26, i32 %27)
  %29 = icmp ne i64 %28, 0
  br label %30

30:                                               ; preds = %24, %2
  %31 = phi i1 [ true, %2 ], [ %29, %24 ]
  %32 = zext i1 %31 to i32
  %33 = load i8*, i8** %4, align 8
  %34 = call i32 @KASSERT(i32 %32, i8* %33)
  %35 = load %struct.filecaps*, %struct.filecaps** %3, align 8
  %36 = getelementptr inbounds %struct.filecaps, %struct.filecaps* %35, i32 0, i32 3
  %37 = load i32*, i32** %36, align 8
  %38 = icmp ne i32* %37, null
  br i1 %38, label %39, label %45

39:                                               ; preds = %30
  %40 = load %struct.filecaps*, %struct.filecaps** %3, align 8
  %41 = getelementptr inbounds %struct.filecaps, %struct.filecaps* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = icmp sgt i32 %42, 0
  %44 = zext i1 %43 to i32
  br label %58

45:                                               ; preds = %30
  %46 = load %struct.filecaps*, %struct.filecaps** %3, align 8
  %47 = getelementptr inbounds %struct.filecaps, %struct.filecaps* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  %49 = icmp eq i32 %48, -1
  br i1 %49, label %55, label %50

50:                                               ; preds = %45
  %51 = load %struct.filecaps*, %struct.filecaps** %3, align 8
  %52 = getelementptr inbounds %struct.filecaps, %struct.filecaps* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 4
  %54 = icmp eq i32 %53, 0
  br label %55

55:                                               ; preds = %50, %45
  %56 = phi i1 [ true, %45 ], [ %54, %50 ]
  %57 = zext i1 %56 to i32
  br label %58

58:                                               ; preds = %55, %39
  %59 = phi i32 [ %44, %39 ], [ %57, %55 ]
  %60 = load i8*, i8** %4, align 8
  %61 = call i32 @KASSERT(i32 %59, i8* %60)
  %62 = load %struct.filecaps*, %struct.filecaps** %3, align 8
  %63 = getelementptr inbounds %struct.filecaps, %struct.filecaps* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 4
  %65 = icmp eq i32 %64, 0
  br i1 %65, label %72, label %66

66:                                               ; preds = %58
  %67 = load %struct.filecaps*, %struct.filecaps** %3, align 8
  %68 = getelementptr inbounds %struct.filecaps, %struct.filecaps* %67, i32 0, i32 2
  %69 = load i32, i32* @CAP_IOCTL, align 4
  %70 = call i64 @cap_rights_is_set(i32* %68, i32 %69)
  %71 = icmp ne i64 %70, 0
  br label %72

72:                                               ; preds = %66, %58
  %73 = phi i1 [ true, %58 ], [ %71, %66 ]
  %74 = zext i1 %73 to i32
  %75 = load i8*, i8** %4, align 8
  %76 = call i32 @KASSERT(i32 %74, i8* %75)
  ret void
}

declare dso_local i32 @KASSERT(i32, i8*) #1

declare dso_local i32 @cap_rights_is_valid(i32*) #1

declare dso_local i64 @cap_rights_is_set(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
