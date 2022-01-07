; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netgraph/extr_ng_device.c_ng_device_rcvmsg.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netgraph/extr_ng_device.c_ng_device_rcvmsg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32 }
%struct.ng_mesg = type { i64, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i64, i32 }

@NGM_DEVICE_COOKIE = common dso_local global i64 0, align 8
@NG_DEVICE_DEVNAME = common dso_local global i8* null, align 8
@M_NOWAIT = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i32)* @ng_device_rcvmsg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ng_device_rcvmsg(i32 %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_5__*, align 8
  %8 = alloca %struct.ng_mesg*, align 8
  %9 = alloca %struct.ng_mesg*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %12 = load i32, i32* %4, align 4
  %13 = call %struct.TYPE_5__* @NG_NODE_PRIVATE(i32 %12)
  store %struct.TYPE_5__* %13, %struct.TYPE_5__** %7, align 8
  store %struct.ng_mesg* null, %struct.ng_mesg** %9, align 8
  store i32 0, i32* %11, align 4
  %14 = load i32, i32* %5, align 4
  %15 = load %struct.ng_mesg*, %struct.ng_mesg** %8, align 8
  %16 = call i32 @NGI_GET_MSG(i32 %14, %struct.ng_mesg* %15)
  %17 = load %struct.ng_mesg*, %struct.ng_mesg** %8, align 8
  %18 = getelementptr inbounds %struct.ng_mesg, %struct.ng_mesg* %17, i32 0, i32 1
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = load i64, i64* @NGM_DEVICE_COOKIE, align 8
  %22 = icmp eq i64 %20, %21
  br i1 %22, label %23, label %58

23:                                               ; preds = %3
  %24 = load %struct.ng_mesg*, %struct.ng_mesg** %8, align 8
  %25 = getelementptr inbounds %struct.ng_mesg, %struct.ng_mesg* %24, i32 0, i32 1
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 8
  switch i32 %27, label %55 [
    i32 128, label %28
  ]

28:                                               ; preds = %23
  %29 = load %struct.ng_mesg*, %struct.ng_mesg** %9, align 8
  %30 = load %struct.ng_mesg*, %struct.ng_mesg** %8, align 8
  %31 = load i8*, i8** @NG_DEVICE_DEVNAME, align 8
  %32 = call i32 @strlen(i8* %31)
  %33 = add nsw i32 %32, 4
  %34 = load i32, i32* @M_NOWAIT, align 4
  %35 = call i32 @NG_MKRESPONSE(%struct.ng_mesg* %29, %struct.ng_mesg* %30, i32 %33, i32 %34)
  %36 = load %struct.ng_mesg*, %struct.ng_mesg** %9, align 8
  %37 = icmp eq %struct.ng_mesg* %36, null
  br i1 %37, label %38, label %41

38:                                               ; preds = %28
  %39 = load i32, i32* @ENOMEM, align 4
  %40 = call i32 @ERROUT(i32 %39)
  br label %41

41:                                               ; preds = %38, %28
  %42 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %43 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = call i8* @devtoname(i32 %44)
  store i8* %45, i8** %10, align 8
  %46 = load %struct.ng_mesg*, %struct.ng_mesg** %9, align 8
  %47 = getelementptr inbounds %struct.ng_mesg, %struct.ng_mesg* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = inttoptr i64 %48 to i8*
  %50 = load i8*, i8** %10, align 8
  %51 = load i8*, i8** %10, align 8
  %52 = call i32 @strlen(i8* %51)
  %53 = add nsw i32 %52, 1
  %54 = call i32 @strlcpy(i8* %49, i8* %50, i32 %53)
  br label %57

55:                                               ; preds = %23
  %56 = load i32, i32* @EINVAL, align 4
  store i32 %56, i32* %11, align 4
  br label %57

57:                                               ; preds = %55, %41
  br label %60

58:                                               ; preds = %3
  %59 = load i32, i32* @EINVAL, align 4
  store i32 %59, i32* %11, align 4
  br label %60

60:                                               ; preds = %58, %57
  br label %61

61:                                               ; preds = %60
  %62 = load i32, i32* %11, align 4
  %63 = load i32, i32* %4, align 4
  %64 = load i32, i32* %5, align 4
  %65 = load %struct.ng_mesg*, %struct.ng_mesg** %9, align 8
  %66 = call i32 @NG_RESPOND_MSG(i32 %62, i32 %63, i32 %64, %struct.ng_mesg* %65)
  %67 = load %struct.ng_mesg*, %struct.ng_mesg** %8, align 8
  %68 = call i32 @NG_FREE_MSG(%struct.ng_mesg* %67)
  %69 = load i32, i32* %11, align 4
  ret i32 %69
}

declare dso_local %struct.TYPE_5__* @NG_NODE_PRIVATE(i32) #1

declare dso_local i32 @NGI_GET_MSG(i32, %struct.ng_mesg*) #1

declare dso_local i32 @NG_MKRESPONSE(%struct.ng_mesg*, %struct.ng_mesg*, i32, i32) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @ERROUT(i32) #1

declare dso_local i8* @devtoname(i32) #1

declare dso_local i32 @strlcpy(i8*, i8*, i32) #1

declare dso_local i32 @NG_RESPOND_MSG(i32, i32, i32, %struct.ng_mesg*) #1

declare dso_local i32 @NG_FREE_MSG(%struct.ng_mesg*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
