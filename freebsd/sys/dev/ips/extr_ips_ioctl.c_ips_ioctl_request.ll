; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ips/extr_ips_ioctl.c_ips_ioctl_request.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ips/extr_ips_ioctl.c_ips_ioctl_request.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32, %struct.TYPE_8__*, i32 }
%struct.TYPE_7__ = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@M_IPSBUF = common dso_local global i32 0, align 4
@M_WAITOK = common dso_local global i32 0, align 4
@IPS_IOCTL_READ = common dso_local global i32 0, align 4
@IPS_IOCTL_WRITE = common dso_local global i32 0, align 4
@IPS_IOCTL_BUFFER_SIZE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ips_ioctl_request(i32* %0, i32 %1, i64 %2, i32 %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_8__*, align 8
  %11 = alloca %struct.TYPE_7__*, align 8
  store i32* %0, i32** %5, align 8
  store i32 %1, i32* %6, align 4
  store i64 %2, i64* %7, align 8
  store i32 %3, i32* %8, align 4
  %12 = load i32, i32* @EINVAL, align 4
  store i32 %12, i32* %9, align 4
  %13 = load i32, i32* %6, align 4
  switch i32 %13, label %65 [
    i32 128, label %14
  ]

14:                                               ; preds = %4
  %15 = load i64, i64* %7, align 8
  %16 = inttoptr i64 %15 to %struct.TYPE_7__*
  store %struct.TYPE_7__* %16, %struct.TYPE_7__** %11, align 8
  %17 = load i32, i32* @M_IPSBUF, align 4
  %18 = load i32, i32* @M_WAITOK, align 4
  %19 = call i8* @malloc(i32 24, i32 %17, i32 %18)
  %20 = bitcast i8* %19 to %struct.TYPE_8__*
  store %struct.TYPE_8__* %20, %struct.TYPE_8__** %10, align 8
  %21 = load i32, i32* @M_IPSBUF, align 4
  %22 = load i32, i32* @M_WAITOK, align 4
  %23 = call i8* @malloc(i32 4, i32 %21, i32 %22)
  %24 = bitcast i8* %23 to %struct.TYPE_8__*
  %25 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %26 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %25, i32 0, i32 1
  store %struct.TYPE_8__* %24, %struct.TYPE_8__** %26, align 8
  %27 = load %struct.TYPE_7__*, %struct.TYPE_7__** %11, align 8
  %28 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %31 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %30, i32 0, i32 1
  %32 = load %struct.TYPE_8__*, %struct.TYPE_8__** %31, align 8
  %33 = call i32 @copyin(i32 %29, %struct.TYPE_8__* %32, i32 4)
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %44

35:                                               ; preds = %14
  %36 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %37 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %36, i32 0, i32 1
  %38 = load %struct.TYPE_8__*, %struct.TYPE_8__** %37, align 8
  %39 = load i32, i32* @M_IPSBUF, align 4
  %40 = call i32 @free(%struct.TYPE_8__* %38, i32 %39)
  %41 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %42 = load i32, i32* @M_IPSBUF, align 4
  %43 = call i32 @free(%struct.TYPE_8__* %41, i32 %42)
  br label %65

44:                                               ; preds = %14
  %45 = load i32, i32* @IPS_IOCTL_READ, align 4
  %46 = load i32, i32* @IPS_IOCTL_WRITE, align 4
  %47 = or i32 %45, %46
  %48 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %49 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %48, i32 0, i32 0
  store i32 %47, i32* %49, align 8
  %50 = load i32, i32* @IPS_IOCTL_BUFFER_SIZE, align 4
  %51 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %52 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %51, i32 0, i32 2
  store i32 %50, i32* %52, align 8
  %53 = load i32*, i32** %5, align 8
  %54 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %55 = load %struct.TYPE_7__*, %struct.TYPE_7__** %11, align 8
  %56 = call i32 @ips_ioctl_cmd(i32* %53, %struct.TYPE_8__* %54, %struct.TYPE_7__* %55)
  store i32 %56, i32* %9, align 4
  %57 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %58 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %57, i32 0, i32 1
  %59 = load %struct.TYPE_8__*, %struct.TYPE_8__** %58, align 8
  %60 = load i32, i32* @M_IPSBUF, align 4
  %61 = call i32 @free(%struct.TYPE_8__* %59, i32 %60)
  %62 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %63 = load i32, i32* @M_IPSBUF, align 4
  %64 = call i32 @free(%struct.TYPE_8__* %62, i32 %63)
  br label %65

65:                                               ; preds = %4, %44, %35
  %66 = load i32, i32* %9, align 4
  ret i32 %66
}

declare dso_local i8* @malloc(i32, i32, i32) #1

declare dso_local i32 @copyin(i32, %struct.TYPE_8__*, i32) #1

declare dso_local i32 @free(%struct.TYPE_8__*, i32) #1

declare dso_local i32 @ips_ioctl_cmd(i32*, %struct.TYPE_8__*, %struct.TYPE_7__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
