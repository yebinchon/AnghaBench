; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netgraph/extr_ng_pred1.c_ng_pred1_rcvmsg.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netgraph/extr_ng_pred1.c_ng_pred1_rcvmsg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i32, %struct.ng_pred1_config }
%struct.ng_pred1_config = type { i32 }
%struct.ng_mesg = type { %struct.TYPE_4__, i64 }
%struct.TYPE_4__ = type { i64, i32, i32 }

@NGM_PRED1_COOKIE = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@M_NOWAIT = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i32)* @ng_pred1_rcvmsg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ng_pred1_rcvmsg(i32 %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_5__*, align 8
  %8 = alloca %struct.ng_mesg*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.ng_mesg*, align 8
  %11 = alloca %struct.ng_pred1_config*, align 8
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
  %18 = getelementptr inbounds %struct.ng_mesg, %struct.ng_mesg* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = load i64, i64* @NGM_PRED1_COOKIE, align 8
  %22 = icmp ne i64 %20, %21
  br i1 %22, label %23, label %26

23:                                               ; preds = %3
  %24 = load i32, i32* @EINVAL, align 4
  %25 = call i32 @ERROUT(i32 %24)
  br label %26

26:                                               ; preds = %23, %3
  %27 = load %struct.ng_mesg*, %struct.ng_mesg** %10, align 8
  %28 = getelementptr inbounds %struct.ng_mesg, %struct.ng_mesg* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 8
  switch i32 %30, label %94 [
    i32 131, label %31
    i32 128, label %57
    i32 129, label %60
    i32 132, label %60
    i32 130, label %60
  ]

31:                                               ; preds = %26
  %32 = load %struct.ng_mesg*, %struct.ng_mesg** %10, align 8
  %33 = getelementptr inbounds %struct.ng_mesg, %struct.ng_mesg* %32, i32 0, i32 1
  %34 = load i64, i64* %33, align 8
  %35 = inttoptr i64 %34 to %struct.ng_pred1_config*
  store %struct.ng_pred1_config* %35, %struct.ng_pred1_config** %11, align 8
  %36 = load %struct.ng_mesg*, %struct.ng_mesg** %10, align 8
  %37 = getelementptr inbounds %struct.ng_mesg, %struct.ng_mesg* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %37, i32 0, i32 2
  %39 = load i32, i32* %38, align 4
  %40 = sext i32 %39 to i64
  %41 = icmp ne i64 %40, 4
  br i1 %41, label %42, label %45

42:                                               ; preds = %31
  %43 = load i32, i32* @EINVAL, align 4
  %44 = call i32 @ERROUT(i32 %43)
  br label %45

45:                                               ; preds = %42, %31
  %46 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %47 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %46, i32 0, i32 2
  %48 = load %struct.ng_pred1_config*, %struct.ng_pred1_config** %11, align 8
  %49 = bitcast %struct.ng_pred1_config* %47 to i8*
  %50 = bitcast %struct.ng_pred1_config* %48 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %49, i8* align 4 %50, i64 4, i1 false)
  %51 = load i32, i32* %5, align 4
  %52 = call i32 @NGI_RETADDR(i32 %51)
  %53 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %54 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %53, i32 0, i32 1
  store i32 %52, i32* %54, align 4
  %55 = load i32, i32* %4, align 4
  %56 = call i32 @Pred1Init(i32 %55)
  br label %96

57:                                               ; preds = %26
  %58 = load i32, i32* %4, align 4
  %59 = call i32 @Pred1Init(i32 %58)
  br label %96

60:                                               ; preds = %26, %26, %26
  %61 = load %struct.ng_mesg*, %struct.ng_mesg** %10, align 8
  %62 = getelementptr inbounds %struct.ng_mesg, %struct.ng_mesg* %61, i32 0, i32 0
  %63 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 8
  %65 = icmp ne i32 %64, 132
  br i1 %65, label %66, label %83

66:                                               ; preds = %60
  %67 = load %struct.ng_mesg*, %struct.ng_mesg** %8, align 8
  %68 = load %struct.ng_mesg*, %struct.ng_mesg** %10, align 8
  %69 = load i32, i32* @M_NOWAIT, align 4
  %70 = call i32 @NG_MKRESPONSE(%struct.ng_mesg* %67, %struct.ng_mesg* %68, i32 4, i32 %69)
  %71 = load %struct.ng_mesg*, %struct.ng_mesg** %8, align 8
  %72 = icmp eq %struct.ng_mesg* %71, null
  br i1 %72, label %73, label %76

73:                                               ; preds = %66
  %74 = load i32, i32* @ENOMEM, align 4
  %75 = call i32 @ERROUT(i32 %74)
  br label %76

76:                                               ; preds = %73, %66
  %77 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %78 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %77, i32 0, i32 0
  %79 = load %struct.ng_mesg*, %struct.ng_mesg** %8, align 8
  %80 = getelementptr inbounds %struct.ng_mesg, %struct.ng_mesg* %79, i32 0, i32 1
  %81 = load i64, i64* %80, align 8
  %82 = call i32 @bcopy(i32* %78, i64 %81, i32 4)
  br label %83

83:                                               ; preds = %76, %60
  %84 = load %struct.ng_mesg*, %struct.ng_mesg** %10, align 8
  %85 = getelementptr inbounds %struct.ng_mesg, %struct.ng_mesg* %84, i32 0, i32 0
  %86 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %85, i32 0, i32 1
  %87 = load i32, i32* %86, align 8
  %88 = icmp ne i32 %87, 129
  br i1 %88, label %89, label %93

89:                                               ; preds = %83
  %90 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %91 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %90, i32 0, i32 0
  %92 = call i32 @bzero(i32* %91, i32 4)
  br label %93

93:                                               ; preds = %89, %83
  br label %96

94:                                               ; preds = %26
  %95 = load i32, i32* @EINVAL, align 4
  store i32 %95, i32* %9, align 4
  br label %96

96:                                               ; preds = %94, %93, %57, %45
  br label %97

97:                                               ; preds = %96
  %98 = load i32, i32* %9, align 4
  %99 = load i32, i32* %4, align 4
  %100 = load i32, i32* %5, align 4
  %101 = load %struct.ng_mesg*, %struct.ng_mesg** %8, align 8
  %102 = call i32 @NG_RESPOND_MSG(i32 %98, i32 %99, i32 %100, %struct.ng_mesg* %101)
  %103 = load %struct.ng_mesg*, %struct.ng_mesg** %10, align 8
  %104 = call i32 @NG_FREE_MSG(%struct.ng_mesg* %103)
  %105 = load i32, i32* %9, align 4
  ret i32 %105
}

declare dso_local %struct.TYPE_5__* @NG_NODE_PRIVATE(i32) #1

declare dso_local i32 @NGI_GET_MSG(i32, %struct.ng_mesg*) #1

declare dso_local i32 @ERROUT(i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @NGI_RETADDR(i32) #1

declare dso_local i32 @Pred1Init(i32) #1

declare dso_local i32 @NG_MKRESPONSE(%struct.ng_mesg*, %struct.ng_mesg*, i32, i32) #1

declare dso_local i32 @bcopy(i32*, i64, i32) #1

declare dso_local i32 @bzero(i32*, i32) #1

declare dso_local i32 @NG_RESPOND_MSG(i32, i32, i32, %struct.ng_mesg*) #1

declare dso_local i32 @NG_FREE_MSG(%struct.ng_mesg*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
