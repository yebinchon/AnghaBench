; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netgraph/extr_ng_mppc.c_ng_mppc_rcvmsg.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netgraph/extr_ng_mppc.c_ng_mppc_rcvmsg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, %struct.ng_mppc_dir, %struct.ng_mppc_dir }
%struct.ng_mppc_dir = type { i32, i32, i32, i32, i32*, %struct.ng_mppc_config }
%struct.ng_mppc_config = type { i32, i32*, i32 }
%struct.ng_mesg = type { %struct.TYPE_4__, i64 }
%struct.TYPE_4__ = type { i32, i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@MPPC_VALID_BITS = common dso_local global i32 0, align 4
@MPPC_BIT = common dso_local global i32 0, align 4
@EPROTONOSUPPORT = common dso_local global i32 0, align 4
@MPPE_BITS = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@MPPE_40 = common dso_local global i32 0, align 4
@MPPE_56 = common dso_local global i32 0, align 4
@M_NETGRAPH_MPPC = common dso_local global i32 0, align 4
@M_NOWAIT = common dso_local global i32 0, align 4
@ng_mppe_weakenkey = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i32)* @ng_mppc_rcvmsg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ng_mppc_rcvmsg(i32 %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_5__*, align 8
  %8 = alloca %struct.ng_mesg*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.ng_mesg*, align 8
  %11 = alloca %struct.ng_mppc_config*, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.ng_mppc_dir*, align 8
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %14 = load i32, i32* %4, align 4
  %15 = call %struct.TYPE_5__* @NG_NODE_PRIVATE(i32 %14)
  store %struct.TYPE_5__* %15, %struct.TYPE_5__** %7, align 8
  store %struct.ng_mesg* null, %struct.ng_mesg** %8, align 8
  store i32 0, i32* %9, align 4
  %16 = load i32, i32* %5, align 4
  %17 = load %struct.ng_mesg*, %struct.ng_mesg** %10, align 8
  %18 = call i32 @NGI_GET_MSG(i32 %16, %struct.ng_mesg* %17)
  %19 = load %struct.ng_mesg*, %struct.ng_mesg** %10, align 8
  %20 = getelementptr inbounds %struct.ng_mesg, %struct.ng_mesg* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  switch i32 %22, label %122 [
    i32 129, label %23
  ]

23:                                               ; preds = %3
  %24 = load %struct.ng_mesg*, %struct.ng_mesg** %10, align 8
  %25 = getelementptr inbounds %struct.ng_mesg, %struct.ng_mesg* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  switch i32 %27, label %119 [
    i32 131, label %28
    i32 130, label %28
    i32 128, label %116
  ]

28:                                               ; preds = %23, %23
  %29 = load %struct.ng_mesg*, %struct.ng_mesg** %10, align 8
  %30 = getelementptr inbounds %struct.ng_mesg, %struct.ng_mesg* %29, i32 0, i32 1
  %31 = load i64, i64* %30, align 8
  %32 = inttoptr i64 %31 to %struct.ng_mppc_config*
  store %struct.ng_mppc_config* %32, %struct.ng_mppc_config** %11, align 8
  %33 = load %struct.ng_mesg*, %struct.ng_mesg** %10, align 8
  %34 = getelementptr inbounds %struct.ng_mesg, %struct.ng_mesg* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = icmp eq i32 %36, 131
  %38 = zext i1 %37 to i32
  store i32 %38, i32* %12, align 4
  %39 = load i32, i32* %12, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %44

41:                                               ; preds = %28
  %42 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %43 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %42, i32 0, i32 2
  br label %47

44:                                               ; preds = %28
  %45 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %46 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %45, i32 0, i32 1
  br label %47

47:                                               ; preds = %44, %41
  %48 = phi %struct.ng_mppc_dir* [ %43, %41 ], [ %46, %44 ]
  store %struct.ng_mppc_dir* %48, %struct.ng_mppc_dir** %13, align 8
  %49 = load %struct.ng_mesg*, %struct.ng_mesg** %10, align 8
  %50 = getelementptr inbounds %struct.ng_mesg, %struct.ng_mesg* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %50, i32 0, i32 2
  %52 = load i32, i32* %51, align 8
  %53 = sext i32 %52 to i64
  %54 = icmp ne i64 %53, 24
  br i1 %54, label %55, label %58

55:                                               ; preds = %47
  %56 = load i32, i32* @EINVAL, align 4
  %57 = call i32 @ERROUT(i32 %56)
  br label %58

58:                                               ; preds = %55, %47
  %59 = load %struct.ng_mppc_config*, %struct.ng_mppc_config** %11, align 8
  %60 = getelementptr inbounds %struct.ng_mppc_config, %struct.ng_mppc_config* %59, i32 0, i32 2
  %61 = load i32, i32* %60, align 8
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %95

63:                                               ; preds = %58
  %64 = load %struct.ng_mppc_config*, %struct.ng_mppc_config** %11, align 8
  %65 = getelementptr inbounds %struct.ng_mppc_config, %struct.ng_mppc_config* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 8
  %67 = load i32, i32* @MPPC_VALID_BITS, align 4
  %68 = xor i32 %67, -1
  %69 = and i32 %66, %68
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %74

71:                                               ; preds = %63
  %72 = load i32, i32* @EINVAL, align 4
  %73 = call i32 @ERROUT(i32 %72)
  br label %74

74:                                               ; preds = %71, %63
  %75 = load %struct.ng_mppc_config*, %struct.ng_mppc_config** %11, align 8
  %76 = getelementptr inbounds %struct.ng_mppc_config, %struct.ng_mppc_config* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 8
  %78 = load i32, i32* @MPPC_BIT, align 4
  %79 = and i32 %77, %78
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %84

81:                                               ; preds = %74
  %82 = load i32, i32* @EPROTONOSUPPORT, align 4
  %83 = call i32 @ERROUT(i32 %82)
  br label %84

84:                                               ; preds = %81, %74
  %85 = load %struct.ng_mppc_config*, %struct.ng_mppc_config** %11, align 8
  %86 = getelementptr inbounds %struct.ng_mppc_config, %struct.ng_mppc_config* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 8
  %88 = load i32, i32* @MPPE_BITS, align 4
  %89 = and i32 %87, %88
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %91, label %94

91:                                               ; preds = %84
  %92 = load i32, i32* @EPROTONOSUPPORT, align 4
  %93 = call i32 @ERROUT(i32 %92)
  br label %94

94:                                               ; preds = %91, %84
  br label %98

95:                                               ; preds = %58
  %96 = load %struct.ng_mppc_config*, %struct.ng_mppc_config** %11, align 8
  %97 = getelementptr inbounds %struct.ng_mppc_config, %struct.ng_mppc_config* %96, i32 0, i32 0
  store i32 0, i32* %97, align 8
  br label %98

98:                                               ; preds = %95, %94
  %99 = load i32, i32* %12, align 4
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %106, label %101

101:                                              ; preds = %98
  %102 = load i32, i32* %5, align 4
  %103 = call i32 @NGI_RETADDR(i32 %102)
  %104 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %105 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %104, i32 0, i32 0
  store i32 %103, i32* %105, align 8
  br label %106

106:                                              ; preds = %101, %98
  %107 = load %struct.ng_mppc_dir*, %struct.ng_mppc_dir** %13, align 8
  %108 = getelementptr inbounds %struct.ng_mppc_dir, %struct.ng_mppc_dir* %107, i32 0, i32 5
  %109 = load %struct.ng_mppc_config*, %struct.ng_mppc_config** %11, align 8
  %110 = bitcast %struct.ng_mppc_config* %108 to i8*
  %111 = bitcast %struct.ng_mppc_config* %109 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %110, i8* align 8 %111, i64 24, i1 false)
  %112 = load %struct.ng_mppc_dir*, %struct.ng_mppc_dir** %13, align 8
  %113 = getelementptr inbounds %struct.ng_mppc_dir, %struct.ng_mppc_dir* %112, i32 0, i32 1
  store i32 0, i32* %113, align 4
  %114 = load %struct.ng_mppc_dir*, %struct.ng_mppc_dir** %13, align 8
  %115 = getelementptr inbounds %struct.ng_mppc_dir, %struct.ng_mppc_dir* %114, i32 0, i32 0
  store i32 0, i32* %115, align 8
  br label %121

116:                                              ; preds = %23
  %117 = load i32, i32* %4, align 4
  %118 = call i32 @ng_mppc_reset_req(i32 %117)
  br label %121

119:                                              ; preds = %23
  %120 = load i32, i32* @EINVAL, align 4
  store i32 %120, i32* %9, align 4
  br label %121

121:                                              ; preds = %119, %116, %106
  br label %124

122:                                              ; preds = %3
  %123 = load i32, i32* @EINVAL, align 4
  store i32 %123, i32* %9, align 4
  br label %124

124:                                              ; preds = %122, %121
  br label %125

125:                                              ; preds = %124
  %126 = load i32, i32* %9, align 4
  %127 = load i32, i32* %4, align 4
  %128 = load i32, i32* %5, align 4
  %129 = load %struct.ng_mesg*, %struct.ng_mesg** %8, align 8
  %130 = call i32 @NG_RESPOND_MSG(i32 %126, i32 %127, i32 %128, %struct.ng_mesg* %129)
  %131 = load %struct.ng_mesg*, %struct.ng_mesg** %10, align 8
  %132 = call i32 @NG_FREE_MSG(%struct.ng_mesg* %131)
  %133 = load i32, i32* %9, align 4
  ret i32 %133
}

declare dso_local %struct.TYPE_5__* @NG_NODE_PRIVATE(i32) #1

declare dso_local i32 @NGI_GET_MSG(i32, %struct.ng_mesg*) #1

declare dso_local i32 @ERROUT(i32) #1

declare dso_local i32 @NGI_RETADDR(i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @ng_mppc_reset_req(i32) #1

declare dso_local i32 @NG_RESPOND_MSG(i32, i32, i32, %struct.ng_mesg*) #1

declare dso_local i32 @NG_FREE_MSG(%struct.ng_mesg*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
