; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netgraph/extr_ng_hole.c_ngh_rcvmsg.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netgraph/extr_ng_hole.c_ngh_rcvmsg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ng_mesg = type { %struct.TYPE_3__, i64 }
%struct.TYPE_3__ = type { i32, i32, i32 }
%struct.ng_hole_hookstat = type { i32 }
%struct.TYPE_4__ = type { %struct.ng_hole_hookstat }

@NG_HOOKSIZ = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@ENOENT = common dso_local global i32 0, align 4
@M_NOWAIT = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i32*)* @ngh_rcvmsg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ngh_rcvmsg(i32 %0, i32 %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca %struct.ng_mesg*, align 8
  %8 = alloca %struct.ng_mesg*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.ng_hole_hookstat*, align 8
  %11 = alloca i32*, align 8
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  store i32* %2, i32** %6, align 8
  store %struct.ng_mesg* null, %struct.ng_mesg** %8, align 8
  store i32 0, i32* %9, align 4
  %12 = load i32, i32* %5, align 4
  %13 = load %struct.ng_mesg*, %struct.ng_mesg** %7, align 8
  %14 = call i32 @NGI_GET_MSG(i32 %12, %struct.ng_mesg* %13)
  %15 = load %struct.ng_mesg*, %struct.ng_mesg** %7, align 8
  %16 = getelementptr inbounds %struct.ng_mesg, %struct.ng_mesg* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  switch i32 %18, label %83 [
    i32 130, label %19
  ]

19:                                               ; preds = %3
  %20 = load %struct.ng_mesg*, %struct.ng_mesg** %7, align 8
  %21 = getelementptr inbounds %struct.ng_mesg, %struct.ng_mesg* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  switch i32 %23, label %80 [
    i32 128, label %24
    i32 131, label %24
    i32 129, label %24
  ]

24:                                               ; preds = %19, %19, %19
  %25 = load %struct.ng_mesg*, %struct.ng_mesg** %7, align 8
  %26 = getelementptr inbounds %struct.ng_mesg, %struct.ng_mesg* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %26, i32 0, i32 2
  %28 = load i32, i32* %27, align 8
  %29 = load i32, i32* @NG_HOOKSIZ, align 4
  %30 = icmp ne i32 %28, %29
  br i1 %30, label %31, label %33

31:                                               ; preds = %24
  %32 = load i32, i32* @EINVAL, align 4
  store i32 %32, i32* %9, align 4
  br label %82

33:                                               ; preds = %24
  %34 = load i32, i32* %4, align 4
  %35 = load %struct.ng_mesg*, %struct.ng_mesg** %7, align 8
  %36 = getelementptr inbounds %struct.ng_mesg, %struct.ng_mesg* %35, i32 0, i32 1
  %37 = load i64, i64* %36, align 8
  %38 = inttoptr i64 %37 to i8*
  %39 = call i32* @ng_findhook(i32 %34, i8* %38)
  store i32* %39, i32** %11, align 8
  %40 = load i32*, i32** %11, align 8
  %41 = icmp eq i32* %40, null
  br i1 %41, label %42, label %44

42:                                               ; preds = %33
  %43 = load i32, i32* @ENOENT, align 4
  store i32 %43, i32* %9, align 4
  br label %82

44:                                               ; preds = %33
  %45 = load i32*, i32** %11, align 8
  %46 = call i32 @NG_HOOK_PRIVATE(i32* %45)
  %47 = sext i32 %46 to i64
  %48 = inttoptr i64 %47 to %struct.TYPE_4__*
  %49 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %48, i32 0, i32 0
  store %struct.ng_hole_hookstat* %49, %struct.ng_hole_hookstat** %10, align 8
  %50 = load %struct.ng_mesg*, %struct.ng_mesg** %7, align 8
  %51 = getelementptr inbounds %struct.ng_mesg, %struct.ng_mesg* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 4
  %54 = icmp ne i32 %53, 131
  br i1 %54, label %55, label %70

55:                                               ; preds = %44
  %56 = load %struct.ng_mesg*, %struct.ng_mesg** %8, align 8
  %57 = load %struct.ng_mesg*, %struct.ng_mesg** %7, align 8
  %58 = load i32, i32* @M_NOWAIT, align 4
  %59 = call i32 @NG_MKRESPONSE(%struct.ng_mesg* %56, %struct.ng_mesg* %57, i32 4, i32 %58)
  %60 = load %struct.ng_mesg*, %struct.ng_mesg** %8, align 8
  %61 = icmp eq %struct.ng_mesg* %60, null
  br i1 %61, label %62, label %64

62:                                               ; preds = %55
  %63 = load i32, i32* @ENOMEM, align 4
  store i32 %63, i32* %9, align 4
  br label %82

64:                                               ; preds = %55
  %65 = load %struct.ng_hole_hookstat*, %struct.ng_hole_hookstat** %10, align 8
  %66 = load %struct.ng_mesg*, %struct.ng_mesg** %8, align 8
  %67 = getelementptr inbounds %struct.ng_mesg, %struct.ng_mesg* %66, i32 0, i32 1
  %68 = load i64, i64* %67, align 8
  %69 = call i32 @bcopy(%struct.ng_hole_hookstat* %65, i64 %68, i32 4)
  br label %70

70:                                               ; preds = %64, %44
  %71 = load %struct.ng_mesg*, %struct.ng_mesg** %7, align 8
  %72 = getelementptr inbounds %struct.ng_mesg, %struct.ng_mesg* %71, i32 0, i32 0
  %73 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %72, i32 0, i32 1
  %74 = load i32, i32* %73, align 4
  %75 = icmp ne i32 %74, 128
  br i1 %75, label %76, label %79

76:                                               ; preds = %70
  %77 = load %struct.ng_hole_hookstat*, %struct.ng_hole_hookstat** %10, align 8
  %78 = call i32 @bzero(%struct.ng_hole_hookstat* %77, i32 4)
  br label %79

79:                                               ; preds = %76, %70
  br label %82

80:                                               ; preds = %19
  %81 = load i32, i32* @EINVAL, align 4
  store i32 %81, i32* %9, align 4
  br label %82

82:                                               ; preds = %80, %79, %62, %42, %31
  br label %85

83:                                               ; preds = %3
  %84 = load i32, i32* @EINVAL, align 4
  store i32 %84, i32* %9, align 4
  br label %85

85:                                               ; preds = %83, %82
  %86 = load i32, i32* %9, align 4
  %87 = load i32, i32* %4, align 4
  %88 = load i32, i32* %5, align 4
  %89 = load %struct.ng_mesg*, %struct.ng_mesg** %8, align 8
  %90 = call i32 @NG_RESPOND_MSG(i32 %86, i32 %87, i32 %88, %struct.ng_mesg* %89)
  %91 = load %struct.ng_mesg*, %struct.ng_mesg** %7, align 8
  %92 = call i32 @NG_FREE_MSG(%struct.ng_mesg* %91)
  %93 = load i32, i32* %9, align 4
  ret i32 %93
}

declare dso_local i32 @NGI_GET_MSG(i32, %struct.ng_mesg*) #1

declare dso_local i32* @ng_findhook(i32, i8*) #1

declare dso_local i32 @NG_HOOK_PRIVATE(i32*) #1

declare dso_local i32 @NG_MKRESPONSE(%struct.ng_mesg*, %struct.ng_mesg*, i32, i32) #1

declare dso_local i32 @bcopy(%struct.ng_hole_hookstat*, i64, i32) #1

declare dso_local i32 @bzero(%struct.ng_hole_hookstat*, i32) #1

declare dso_local i32 @NG_RESPOND_MSG(i32, i32, i32, %struct.ng_mesg*) #1

declare dso_local i32 @NG_FREE_MSG(%struct.ng_mesg*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
