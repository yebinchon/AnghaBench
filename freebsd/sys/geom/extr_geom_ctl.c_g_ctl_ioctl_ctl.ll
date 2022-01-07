; ModuleID = '/home/carl/AnghaBench/freebsd/sys/geom/extr_geom_ctl.c_g_ctl_ioctl_ctl.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/geom/extr_geom_ctl.c_g_ctl_ioctl_ctl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cdev = type { i32 }
%struct.thread = type { i32 }
%struct.gctl_req = type { i32, i32, i64, i32, i32, i32* }

@EINVAL = common dso_local global i32 0, align 4
@VM_PROT_WRITE = common dso_local global i32 0, align 4
@GCTL_VERSION = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [37 x i8] c"kernel and libgeom version mismatch.\00", align 1
@g_debugflags = common dso_local global i32 0, align 4
@G_F_CTLDUMP = common dso_local global i32 0, align 4
@g_ctl_req = common dso_local global i32 0, align 4
@M_WAITOK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cdev*, i32, i64, i32, %struct.thread*)* @g_ctl_ioctl_ctl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @g_ctl_ioctl_ctl(%struct.cdev* %0, i32 %1, i64 %2, i32 %3, %struct.thread* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.cdev*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.thread*, align 8
  %12 = alloca %struct.gctl_req*, align 8
  %13 = alloca i32, align 4
  store %struct.cdev* %0, %struct.cdev** %7, align 8
  store i32 %1, i32* %8, align 4
  store i64 %2, i64* %9, align 8
  store i32 %3, i32* %10, align 4
  store %struct.thread* %4, %struct.thread** %11, align 8
  %14 = load i64, i64* %9, align 8
  %15 = inttoptr i64 %14 to i8*
  %16 = bitcast i8* %15 to %struct.gctl_req*
  store %struct.gctl_req* %16, %struct.gctl_req** %12, align 8
  %17 = load %struct.gctl_req*, %struct.gctl_req** %12, align 8
  %18 = getelementptr inbounds %struct.gctl_req, %struct.gctl_req* %17, i32 0, i32 0
  store i32 0, i32* %18, align 8
  %19 = load %struct.gctl_req*, %struct.gctl_req** %12, align 8
  %20 = getelementptr inbounds %struct.gctl_req, %struct.gctl_req* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = icmp slt i32 %21, 2
  br i1 %22, label %23, label %25

23:                                               ; preds = %5
  %24 = load i32, i32* @EINVAL, align 4
  store i32 %24, i32* %6, align 4
  br label %105

25:                                               ; preds = %5
  %26 = load %struct.gctl_req*, %struct.gctl_req** %12, align 8
  %27 = getelementptr inbounds %struct.gctl_req, %struct.gctl_req* %26, i32 0, i32 4
  %28 = load i32, i32* %27, align 4
  %29 = load %struct.gctl_req*, %struct.gctl_req** %12, align 8
  %30 = getelementptr inbounds %struct.gctl_req, %struct.gctl_req* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = load i32, i32* @VM_PROT_WRITE, align 4
  %33 = call i32 @useracc(i32 %28, i32 %31, i32 %32)
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %37, label %35

35:                                               ; preds = %25
  %36 = load i32, i32* @EINVAL, align 4
  store i32 %36, i32* %6, align 4
  br label %105

37:                                               ; preds = %25
  %38 = call i32 (...) @sbuf_new_auto()
  %39 = load %struct.gctl_req*, %struct.gctl_req** %12, align 8
  %40 = getelementptr inbounds %struct.gctl_req, %struct.gctl_req* %39, i32 0, i32 3
  store i32 %38, i32* %40, align 8
  %41 = load %struct.gctl_req*, %struct.gctl_req** %12, align 8
  %42 = getelementptr inbounds %struct.gctl_req, %struct.gctl_req* %41, i32 0, i32 2
  %43 = load i64, i64* %42, align 8
  %44 = load i64, i64* @GCTL_VERSION, align 8
  %45 = icmp ne i64 %43, %44
  br i1 %45, label %46, label %51

46:                                               ; preds = %37
  %47 = load %struct.gctl_req*, %struct.gctl_req** %12, align 8
  %48 = call i32 @gctl_error(%struct.gctl_req* %47, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0))
  %49 = load %struct.gctl_req*, %struct.gctl_req** %12, align 8
  %50 = getelementptr inbounds %struct.gctl_req, %struct.gctl_req* %49, i32 0, i32 5
  store i32* null, i32** %50, align 8
  br label %74

51:                                               ; preds = %37
  %52 = load %struct.gctl_req*, %struct.gctl_req** %12, align 8
  %53 = call i32 @gctl_copyin(%struct.gctl_req* %52)
  %54 = load i32, i32* @g_debugflags, align 4
  %55 = load i32, i32* @G_F_CTLDUMP, align 4
  %56 = and i32 %54, %55
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %61

58:                                               ; preds = %51
  %59 = load %struct.gctl_req*, %struct.gctl_req** %12, align 8
  %60 = call i32 @gctl_dump(%struct.gctl_req* %59)
  br label %61

61:                                               ; preds = %58, %51
  %62 = load %struct.gctl_req*, %struct.gctl_req** %12, align 8
  %63 = getelementptr inbounds %struct.gctl_req, %struct.gctl_req* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 8
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %73, label %66

66:                                               ; preds = %61
  %67 = load i32, i32* @g_ctl_req, align 4
  %68 = load %struct.gctl_req*, %struct.gctl_req** %12, align 8
  %69 = load i32, i32* @M_WAITOK, align 4
  %70 = call i32 @g_waitfor_event(i32 %67, %struct.gctl_req* %68, i32 %69, i32* null)
  %71 = load %struct.gctl_req*, %struct.gctl_req** %12, align 8
  %72 = call i32 @gctl_copyout(%struct.gctl_req* %71)
  br label %73

73:                                               ; preds = %66, %61
  br label %74

74:                                               ; preds = %73, %46
  %75 = load %struct.gctl_req*, %struct.gctl_req** %12, align 8
  %76 = getelementptr inbounds %struct.gctl_req, %struct.gctl_req* %75, i32 0, i32 3
  %77 = load i32, i32* %76, align 8
  %78 = call i64 @sbuf_done(i32 %77)
  %79 = icmp ne i64 %78, 0
  br i1 %79, label %80, label %98

80:                                               ; preds = %74
  %81 = load %struct.gctl_req*, %struct.gctl_req** %12, align 8
  %82 = getelementptr inbounds %struct.gctl_req, %struct.gctl_req* %81, i32 0, i32 3
  %83 = load i32, i32* %82, align 8
  %84 = call i32 @sbuf_data(i32 %83)
  %85 = load %struct.gctl_req*, %struct.gctl_req** %12, align 8
  %86 = getelementptr inbounds %struct.gctl_req, %struct.gctl_req* %85, i32 0, i32 4
  %87 = load i32, i32* %86, align 4
  %88 = load %struct.gctl_req*, %struct.gctl_req** %12, align 8
  %89 = getelementptr inbounds %struct.gctl_req, %struct.gctl_req* %88, i32 0, i32 1
  %90 = load i32, i32* %89, align 4
  %91 = load %struct.gctl_req*, %struct.gctl_req** %12, align 8
  %92 = getelementptr inbounds %struct.gctl_req, %struct.gctl_req* %91, i32 0, i32 3
  %93 = load i32, i32* %92, align 8
  %94 = call i64 @sbuf_len(i32 %93)
  %95 = add nsw i64 %94, 1
  %96 = call i32 @imin(i32 %90, i64 %95)
  %97 = call i32 @copyout(i32 %84, i32 %87, i32 %96)
  br label %98

98:                                               ; preds = %80, %74
  %99 = load %struct.gctl_req*, %struct.gctl_req** %12, align 8
  %100 = getelementptr inbounds %struct.gctl_req, %struct.gctl_req* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 8
  store i32 %101, i32* %13, align 4
  %102 = load %struct.gctl_req*, %struct.gctl_req** %12, align 8
  %103 = call i32 @gctl_free(%struct.gctl_req* %102)
  %104 = load i32, i32* %13, align 4
  store i32 %104, i32* %6, align 4
  br label %105

105:                                              ; preds = %98, %35, %23
  %106 = load i32, i32* %6, align 4
  ret i32 %106
}

declare dso_local i32 @useracc(i32, i32, i32) #1

declare dso_local i32 @sbuf_new_auto(...) #1

declare dso_local i32 @gctl_error(%struct.gctl_req*, i8*) #1

declare dso_local i32 @gctl_copyin(%struct.gctl_req*) #1

declare dso_local i32 @gctl_dump(%struct.gctl_req*) #1

declare dso_local i32 @g_waitfor_event(i32, %struct.gctl_req*, i32, i32*) #1

declare dso_local i32 @gctl_copyout(%struct.gctl_req*) #1

declare dso_local i64 @sbuf_done(i32) #1

declare dso_local i32 @copyout(i32, i32, i32) #1

declare dso_local i32 @sbuf_data(i32) #1

declare dso_local i32 @imin(i32, i64) #1

declare dso_local i64 @sbuf_len(i32) #1

declare dso_local i32 @gctl_free(%struct.gctl_req*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
