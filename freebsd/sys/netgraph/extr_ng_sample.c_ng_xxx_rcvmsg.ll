; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netgraph/extr_ng_sample.c_ng_xxx_rcvmsg.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netgraph/extr_ng_sample.c_ng_xxx_rcvmsg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i32, i32 }
%struct.ng_mesg = type { i64, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i32, i32 }
%struct.ngxxxstat = type { i32, i32 }

@M_NOWAIT = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i32)* @ng_xxx_rcvmsg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ng_xxx_rcvmsg(i32 %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_5__*, align 8
  %8 = alloca %struct.ng_mesg*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.ng_mesg*, align 8
  %11 = alloca %struct.ngxxxstat*, align 8
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %12 = load i32, i32* %4, align 4
  %13 = call %struct.TYPE_5__* @NG_NODE_PRIVATE(i32 %12)
  store %struct.TYPE_5__* %13, %struct.TYPE_5__** %7, align 8
  store %struct.ng_mesg* null, %struct.ng_mesg** %8, align 8
  store i32 0, i32* %9, align 4
  %14 = load i32, i32* %5, align 4
  %15 = load %struct.ng_mesg*, %struct.ng_mesg** %10, align 8
  %16 = call i32 @NGI_GET_MSG(i32 %14, %struct.ng_mesg* %15)
  %17 = load %struct.ng_mesg*, %struct.ng_mesg** %10, align 8
  %18 = getelementptr inbounds %struct.ng_mesg, %struct.ng_mesg* %17, i32 0, i32 1
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  switch i32 %20, label %70 [
    i32 130, label %21
  ]

21:                                               ; preds = %3
  %22 = load %struct.ng_mesg*, %struct.ng_mesg** %10, align 8
  %23 = getelementptr inbounds %struct.ng_mesg, %struct.ng_mesg* %22, i32 0, i32 1
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 2
  %25 = load i32, i32* %24, align 8
  switch i32 %25, label %67 [
    i32 129, label %26
    i32 128, label %50
  ]

26:                                               ; preds = %21
  %27 = load %struct.ng_mesg*, %struct.ng_mesg** %8, align 8
  %28 = load %struct.ng_mesg*, %struct.ng_mesg** %10, align 8
  %29 = load i32, i32* @M_NOWAIT, align 4
  %30 = call i32 @NG_MKRESPONSE(%struct.ng_mesg* %27, %struct.ng_mesg* %28, i32 8, i32 %29)
  %31 = load %struct.ng_mesg*, %struct.ng_mesg** %8, align 8
  %32 = icmp ne %struct.ng_mesg* %31, null
  br i1 %32, label %35, label %33

33:                                               ; preds = %26
  %34 = load i32, i32* @ENOMEM, align 4
  store i32 %34, i32* %9, align 4
  br label %69

35:                                               ; preds = %26
  %36 = load %struct.ng_mesg*, %struct.ng_mesg** %8, align 8
  %37 = getelementptr inbounds %struct.ng_mesg, %struct.ng_mesg* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = inttoptr i64 %38 to %struct.ngxxxstat*
  store %struct.ngxxxstat* %39, %struct.ngxxxstat** %11, align 8
  %40 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %41 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %40, i32 0, i32 2
  %42 = load i32, i32* %41, align 4
  %43 = load %struct.ngxxxstat*, %struct.ngxxxstat** %11, align 8
  %44 = getelementptr inbounds %struct.ngxxxstat, %struct.ngxxxstat* %43, i32 0, i32 1
  store i32 %42, i32* %44, align 4
  %45 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %46 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  %48 = load %struct.ngxxxstat*, %struct.ngxxxstat** %11, align 8
  %49 = getelementptr inbounds %struct.ngxxxstat, %struct.ngxxxstat* %48, i32 0, i32 0
  store i32 %47, i32* %49, align 4
  br label %69

50:                                               ; preds = %21
  %51 = load %struct.ng_mesg*, %struct.ng_mesg** %10, align 8
  %52 = getelementptr inbounds %struct.ng_mesg, %struct.ng_mesg* %51, i32 0, i32 1
  %53 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 4
  %55 = sext i32 %54 to i64
  %56 = icmp ne i64 %55, 4
  br i1 %56, label %57, label %59

57:                                               ; preds = %50
  %58 = load i32, i32* @EINVAL, align 4
  store i32 %58, i32* %9, align 4
  br label %69

59:                                               ; preds = %50
  %60 = load %struct.ng_mesg*, %struct.ng_mesg** %10, align 8
  %61 = getelementptr inbounds %struct.ng_mesg, %struct.ng_mesg* %60, i32 0, i32 0
  %62 = load i64, i64* %61, align 8
  %63 = inttoptr i64 %62 to i32*
  %64 = load i32, i32* %63, align 4
  %65 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %66 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %65, i32 0, i32 0
  store i32 %64, i32* %66, align 4
  br label %69

67:                                               ; preds = %21
  %68 = load i32, i32* @EINVAL, align 4
  store i32 %68, i32* %9, align 4
  br label %69

69:                                               ; preds = %67, %59, %57, %35, %33
  br label %72

70:                                               ; preds = %3
  %71 = load i32, i32* @EINVAL, align 4
  store i32 %71, i32* %9, align 4
  br label %72

72:                                               ; preds = %70, %69
  %73 = load i32, i32* %9, align 4
  %74 = load i32, i32* %4, align 4
  %75 = load i32, i32* %5, align 4
  %76 = load %struct.ng_mesg*, %struct.ng_mesg** %8, align 8
  %77 = call i32 @NG_RESPOND_MSG(i32 %73, i32 %74, i32 %75, %struct.ng_mesg* %76)
  %78 = load %struct.ng_mesg*, %struct.ng_mesg** %10, align 8
  %79 = call i32 @NG_FREE_MSG(%struct.ng_mesg* %78)
  %80 = load i32, i32* %9, align 4
  ret i32 %80
}

declare dso_local %struct.TYPE_5__* @NG_NODE_PRIVATE(i32) #1

declare dso_local i32 @NGI_GET_MSG(i32, %struct.ng_mesg*) #1

declare dso_local i32 @NG_MKRESPONSE(%struct.ng_mesg*, %struct.ng_mesg*, i32, i32) #1

declare dso_local i32 @NG_RESPOND_MSG(i32, i32, i32, %struct.ng_mesg*) #1

declare dso_local i32 @NG_FREE_MSG(%struct.ng_mesg*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
