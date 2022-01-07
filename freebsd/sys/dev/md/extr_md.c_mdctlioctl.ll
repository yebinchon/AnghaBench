; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/md/extr_md.c_mdctlioctl.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/md/extr_md.c_mdctlioctl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cdev = type { i32 }
%struct.thread = type { i32 }
%struct.md_req = type { i8*, i8*, i8* }
%struct.md_ioctl = type { i8*, i8*, i32 }
%struct.md_ioctl32 = type { i8*, i8*, i32 }

@md_debug = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [29 x i8] c"mdctlioctl(%s %lx %p %x %p)\0A\00", align 1
@MDIOVERSION = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@UIO_USERSPACE = common dso_local global i8* null, align 8
@UIO_SYSSPACE = common dso_local global i8* null, align 8
@ENOIOCTL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cdev*, i32, i64, i32, %struct.thread*)* @mdctlioctl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mdctlioctl(%struct.cdev* %0, i32 %1, i64 %2, i32 %3, %struct.thread* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.cdev*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.thread*, align 8
  %12 = alloca %struct.md_req, align 8
  %13 = alloca i32, align 4
  %14 = alloca %struct.md_ioctl*, align 8
  %15 = alloca %struct.md_ioctl*, align 8
  store %struct.cdev* %0, %struct.cdev** %7, align 8
  store i32 %1, i32* %8, align 4
  store i64 %2, i64* %9, align 8
  store i32 %3, i32* %10, align 4
  store %struct.thread* %4, %struct.thread** %11, align 8
  %16 = load i64, i64* @md_debug, align 8
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %26

18:                                               ; preds = %5
  %19 = load %struct.cdev*, %struct.cdev** %7, align 8
  %20 = call i8* @devtoname(%struct.cdev* %19)
  %21 = load i32, i32* %8, align 4
  %22 = load i64, i64* %9, align 8
  %23 = load i32, i32* %10, align 4
  %24 = load %struct.thread*, %struct.thread** %11, align 8
  %25 = call i32 @printf(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i8* %20, i32 %21, i64 %22, i32 %23, %struct.thread* %24)
  br label %26

26:                                               ; preds = %18, %5
  %27 = call i32 @bzero(%struct.md_req* %12, i32 24)
  %28 = load i32, i32* %8, align 4
  switch i32 %28, label %64 [
    i32 135, label %29
    i32 133, label %29
    i32 129, label %29
    i32 131, label %29
  ]

29:                                               ; preds = %26, %26, %26, %26
  %30 = load i64, i64* %9, align 8
  %31 = inttoptr i64 %30 to %struct.md_ioctl*
  store %struct.md_ioctl* %31, %struct.md_ioctl** %14, align 8
  %32 = load %struct.md_ioctl*, %struct.md_ioctl** %14, align 8
  %33 = getelementptr inbounds %struct.md_ioctl, %struct.md_ioctl* %32, i32 0, i32 2
  %34 = load i32, i32* %33, align 8
  %35 = load i32, i32* @MDIOVERSION, align 4
  %36 = icmp ne i32 %34, %35
  br i1 %36, label %37, label %39

37:                                               ; preds = %29
  %38 = load i32, i32* @EINVAL, align 4
  store i32 %38, i32* %6, align 4
  br label %90

39:                                               ; preds = %29
  %40 = load %struct.md_ioctl*, %struct.md_ioctl** %14, align 8
  %41 = bitcast %struct.md_ioctl* %40 to %struct.md_ioctl32*
  %42 = call i32 @MD_IOCTL2REQ(%struct.md_ioctl32* %41, %struct.md_req* %12)
  %43 = load %struct.md_ioctl*, %struct.md_ioctl** %14, align 8
  %44 = getelementptr inbounds %struct.md_ioctl, %struct.md_ioctl* %43, i32 0, i32 1
  %45 = load i8*, i8** %44, align 8
  %46 = getelementptr inbounds %struct.md_req, %struct.md_req* %12, i32 0, i32 2
  store i8* %45, i8** %46, align 8
  %47 = load i8*, i8** @UIO_USERSPACE, align 8
  %48 = getelementptr inbounds %struct.md_req, %struct.md_req* %12, i32 0, i32 1
  store i8* %47, i8** %48, align 8
  %49 = load %struct.md_ioctl*, %struct.md_ioctl** %14, align 8
  %50 = getelementptr inbounds %struct.md_ioctl, %struct.md_ioctl* %49, i32 0, i32 1
  %51 = load i8*, i8** %50, align 8
  %52 = load %struct.md_ioctl*, %struct.md_ioctl** %14, align 8
  %53 = getelementptr inbounds %struct.md_ioctl, %struct.md_ioctl* %52, i64 1
  %54 = bitcast %struct.md_ioctl* %53 to i8*
  %55 = icmp eq i8* %51, %54
  br i1 %55, label %56, label %59

56:                                               ; preds = %39
  %57 = load i8*, i8** @UIO_SYSSPACE, align 8
  %58 = getelementptr inbounds %struct.md_req, %struct.md_req* %12, i32 0, i32 1
  store i8* %57, i8** %58, align 8
  br label %59

59:                                               ; preds = %56, %39
  %60 = load %struct.md_ioctl*, %struct.md_ioctl** %14, align 8
  %61 = getelementptr inbounds %struct.md_ioctl, %struct.md_ioctl* %60, i32 0, i32 0
  %62 = load i8*, i8** %61, align 8
  %63 = getelementptr inbounds %struct.md_req, %struct.md_req* %12, i32 0, i32 0
  store i8* %62, i8** %63, align 8
  br label %65

64:                                               ; preds = %26
  br label %65

65:                                               ; preds = %64, %59
  store i32 0, i32* %13, align 4
  %66 = load i32, i32* %8, align 4
  switch i32 %66, label %77 [
    i32 135, label %67
    i32 133, label %70
    i32 129, label %73
    i32 131, label %75
  ]

67:                                               ; preds = %65
  %68 = load %struct.thread*, %struct.thread** %11, align 8
  %69 = call i32 @kern_mdattach(%struct.thread* %68, %struct.md_req* %12)
  store i32 %69, i32* %13, align 4
  br label %79

70:                                               ; preds = %65
  %71 = load %struct.thread*, %struct.thread** %11, align 8
  %72 = call i32 @kern_mddetach(%struct.thread* %71, %struct.md_req* %12)
  store i32 %72, i32* %13, align 4
  br label %79

73:                                               ; preds = %65
  %74 = call i32 @kern_mdresize(%struct.md_req* %12)
  store i32 %74, i32* %13, align 4
  br label %79

75:                                               ; preds = %65
  %76 = call i32 @kern_mdquery(%struct.md_req* %12)
  store i32 %76, i32* %13, align 4
  br label %79

77:                                               ; preds = %65
  %78 = load i32, i32* @ENOIOCTL, align 4
  store i32 %78, i32* %13, align 4
  br label %79

79:                                               ; preds = %77, %75, %73, %70, %67
  %80 = load i32, i32* %8, align 4
  switch i32 %80, label %87 [
    i32 135, label %81
    i32 131, label %81
  ]

81:                                               ; preds = %79, %79
  %82 = load i64, i64* %9, align 8
  %83 = inttoptr i64 %82 to %struct.md_ioctl*
  store %struct.md_ioctl* %83, %struct.md_ioctl** %15, align 8
  %84 = load %struct.md_ioctl*, %struct.md_ioctl** %15, align 8
  %85 = bitcast %struct.md_ioctl* %84 to %struct.md_ioctl32*
  %86 = call i32 @MD_REQ2IOCTL(%struct.md_req* %12, %struct.md_ioctl32* %85)
  br label %88

87:                                               ; preds = %79
  br label %88

88:                                               ; preds = %87, %81
  %89 = load i32, i32* %13, align 4
  store i32 %89, i32* %6, align 4
  br label %90

90:                                               ; preds = %88, %37
  %91 = load i32, i32* %6, align 4
  ret i32 %91
}

declare dso_local i32 @printf(i8*, i8*, i32, i64, i32, %struct.thread*) #1

declare dso_local i8* @devtoname(%struct.cdev*) #1

declare dso_local i32 @bzero(%struct.md_req*, i32) #1

declare dso_local i32 @MD_IOCTL2REQ(%struct.md_ioctl32*, %struct.md_req*) #1

declare dso_local i32 @kern_mdattach(%struct.thread*, %struct.md_req*) #1

declare dso_local i32 @kern_mddetach(%struct.thread*, %struct.md_req*) #1

declare dso_local i32 @kern_mdresize(%struct.md_req*) #1

declare dso_local i32 @kern_mdquery(%struct.md_req*) #1

declare dso_local i32 @MD_REQ2IOCTL(%struct.md_req*, %struct.md_ioctl32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
