; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ocs_fc/extr_ocs_unsol.c_ocs_node_dispatch_frame.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ocs_fc/extr_ocs_unsol.c_ocs_node_dispatch_frame.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_29__ = type { %struct.TYPE_26__* }
%struct.TYPE_26__ = type { %struct.TYPE_25__ }
%struct.TYPE_25__ = type { %struct.TYPE_30__* }
%struct.TYPE_30__ = type { i32, i32, i32, i32, i32 }
%struct.TYPE_28__ = type { i32, %struct.TYPE_27__ }
%struct.TYPE_27__ = type { i64 }

@FC_FCTL_END_SEQUENCE = common dso_local global i32 0, align 4
@FC_FCTL_SEQUENCE_INITIATIVE = common dso_local global i32 0, align 4
@FC_RCTL_INFO_UNSOL_CMD = common dso_local global i32 0, align 4
@FC_RCTL_INFO_SOL_DATA = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [52 x i8] c"Dropping frame hdr = %08x %08x %08x %08x %08x %08x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, %struct.TYPE_29__*)* @ocs_node_dispatch_frame to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ocs_node_dispatch_frame(i8* %0, %struct.TYPE_29__* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca %struct.TYPE_29__*, align 8
  %5 = alloca %struct.TYPE_30__*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.TYPE_28__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  store %struct.TYPE_29__* %1, %struct.TYPE_29__** %4, align 8
  %10 = load %struct.TYPE_29__*, %struct.TYPE_29__** %4, align 8
  %11 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %10, i32 0, i32 0
  %12 = load %struct.TYPE_26__*, %struct.TYPE_26__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %13, i32 0, i32 0
  %15 = load %struct.TYPE_30__*, %struct.TYPE_30__** %14, align 8
  store %struct.TYPE_30__* %15, %struct.TYPE_30__** %5, align 8
  %16 = load i8*, i8** %3, align 8
  %17 = bitcast i8* %16 to %struct.TYPE_28__*
  store %struct.TYPE_28__* %17, %struct.TYPE_28__** %7, align 8
  store i32 -1, i32* %8, align 4
  store i32 0, i32* %9, align 4
  %18 = load %struct.TYPE_30__*, %struct.TYPE_30__** %5, align 8
  %19 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %18, i32 0, i32 4
  %20 = load i32, i32* %19, align 4
  %21 = call i32 @fc_be24toh(i32 %20)
  %22 = sext i32 %21 to i64
  store i64 %22, i64* %6, align 8
  %23 = load i64, i64* %6, align 8
  %24 = load %struct.TYPE_28__*, %struct.TYPE_28__** %7, align 8
  %25 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %24, i32 0, i32 1
  %26 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = icmp eq i64 %23, %27
  %29 = zext i1 %28 to i32
  %30 = call i32 @ocs_assert(i32 %29, i32 -1)
  %31 = load %struct.TYPE_30__*, %struct.TYPE_30__** %5, align 8
  %32 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %31, i32 0, i32 3
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @fc_be24toh(i32 %33)
  %35 = load i32, i32* @FC_FCTL_END_SEQUENCE, align 4
  %36 = and i32 %34, %35
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %130

38:                                               ; preds = %2
  %39 = load %struct.TYPE_30__*, %struct.TYPE_30__** %5, align 8
  %40 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %39, i32 0, i32 3
  %41 = load i32, i32* %40, align 4
  %42 = call i32 @fc_be24toh(i32 %41)
  %43 = load i32, i32* @FC_FCTL_SEQUENCE_INITIATIVE, align 4
  %44 = and i32 %42, %43
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %47

46:                                               ; preds = %38
  store i32 1, i32* %9, align 4
  br label %47

47:                                               ; preds = %46, %38
  %48 = load %struct.TYPE_30__*, %struct.TYPE_30__** %5, align 8
  %49 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  switch i32 %50, label %129 [
    i32 131, label %51
    i32 132, label %59
    i32 130, label %71
  ]

51:                                               ; preds = %47
  %52 = load i32, i32* %9, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %58

54:                                               ; preds = %51
  %55 = load %struct.TYPE_28__*, %struct.TYPE_28__** %7, align 8
  %56 = load %struct.TYPE_29__*, %struct.TYPE_29__** %4, align 8
  %57 = call i32 @ocs_node_recv_els_frame(%struct.TYPE_28__* %55, %struct.TYPE_29__* %56)
  store i32 %57, i32* %8, align 4
  br label %58

58:                                               ; preds = %54, %51
  br label %129

59:                                               ; preds = %47
  %60 = load i32, i32* %9, align 4
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %66

62:                                               ; preds = %59
  %63 = load %struct.TYPE_28__*, %struct.TYPE_28__** %7, align 8
  %64 = load %struct.TYPE_29__*, %struct.TYPE_29__** %4, align 8
  %65 = call i32 @ocs_node_recv_abts_frame(%struct.TYPE_28__* %63, %struct.TYPE_29__* %64)
  store i32 %65, i32* %8, align 4
  br label %70

66:                                               ; preds = %59
  %67 = load %struct.TYPE_28__*, %struct.TYPE_28__** %7, align 8
  %68 = load %struct.TYPE_29__*, %struct.TYPE_29__** %4, align 8
  %69 = call i32 @ocs_node_recv_bls_no_sit(%struct.TYPE_28__* %67, %struct.TYPE_29__* %68)
  store i32 %69, i32* %8, align 4
  br label %70

70:                                               ; preds = %66, %62
  br label %129

71:                                               ; preds = %47
  %72 = load %struct.TYPE_30__*, %struct.TYPE_30__** %5, align 8
  %73 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %72, i32 0, i32 2
  %74 = load i32, i32* %73, align 4
  switch i32 %74, label %127 [
    i32 129, label %75
    i32 128, label %119
  ]

75:                                               ; preds = %71
  %76 = load %struct.TYPE_30__*, %struct.TYPE_30__** %5, align 8
  %77 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %76, i32 0, i32 1
  %78 = load i32, i32* %77, align 4
  %79 = load i32, i32* @FC_RCTL_INFO_UNSOL_CMD, align 4
  %80 = icmp eq i32 %78, %79
  br i1 %80, label %81, label %103

81:                                               ; preds = %75
  %82 = load %struct.TYPE_28__*, %struct.TYPE_28__** %7, align 8
  %83 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 8
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %86, label %98

86:                                               ; preds = %81
  %87 = load i32, i32* %9, align 4
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %89, label %93

89:                                               ; preds = %86
  %90 = load %struct.TYPE_28__*, %struct.TYPE_28__** %7, align 8
  %91 = load %struct.TYPE_29__*, %struct.TYPE_29__** %4, align 8
  %92 = call i32 @ocs_dispatch_fcp_cmd(%struct.TYPE_28__* %90, %struct.TYPE_29__* %91)
  store i32 %92, i32* %8, align 4
  br label %97

93:                                               ; preds = %86
  %94 = load %struct.TYPE_28__*, %struct.TYPE_28__** %7, align 8
  %95 = load %struct.TYPE_29__*, %struct.TYPE_29__** %4, align 8
  %96 = call i32 @ocs_dispatch_fcp_cmd_auto_xfer_rdy(%struct.TYPE_28__* %94, %struct.TYPE_29__* %95)
  store i32 %96, i32* %8, align 4
  br label %97

97:                                               ; preds = %93, %89
  br label %102

98:                                               ; preds = %81
  %99 = load %struct.TYPE_28__*, %struct.TYPE_28__** %7, align 8
  %100 = load %struct.TYPE_29__*, %struct.TYPE_29__** %4, align 8
  %101 = call i32 @ocs_node_recv_fcp_cmd(%struct.TYPE_28__* %99, %struct.TYPE_29__* %100)
  store i32 %101, i32* %8, align 4
  br label %102

102:                                              ; preds = %98, %97
  br label %118

103:                                              ; preds = %75
  %104 = load %struct.TYPE_30__*, %struct.TYPE_30__** %5, align 8
  %105 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %104, i32 0, i32 1
  %106 = load i32, i32* %105, align 4
  %107 = load i32, i32* @FC_RCTL_INFO_SOL_DATA, align 4
  %108 = icmp eq i32 %106, %107
  br i1 %108, label %109, label %117

109:                                              ; preds = %103
  %110 = load i32, i32* %9, align 4
  %111 = icmp ne i32 %110, 0
  br i1 %111, label %112, label %116

112:                                              ; preds = %109
  %113 = load %struct.TYPE_28__*, %struct.TYPE_28__** %7, align 8
  %114 = load %struct.TYPE_29__*, %struct.TYPE_29__** %4, align 8
  %115 = call i32 @ocs_dispatch_fcp_data(%struct.TYPE_28__* %113, %struct.TYPE_29__* %114)
  store i32 %115, i32* %8, align 4
  br label %116

116:                                              ; preds = %112, %109
  br label %117

117:                                              ; preds = %116, %103
  br label %118

118:                                              ; preds = %117, %102
  br label %128

119:                                              ; preds = %71
  %120 = load i32, i32* %9, align 4
  %121 = icmp ne i32 %120, 0
  br i1 %121, label %122, label %126

122:                                              ; preds = %119
  %123 = load %struct.TYPE_28__*, %struct.TYPE_28__** %7, align 8
  %124 = load %struct.TYPE_29__*, %struct.TYPE_29__** %4, align 8
  %125 = call i32 @ocs_node_recv_ct_frame(%struct.TYPE_28__* %123, %struct.TYPE_29__* %124)
  store i32 %125, i32* %8, align 4
  br label %126

126:                                              ; preds = %122, %119
  br label %128

127:                                              ; preds = %71
  br label %128

128:                                              ; preds = %127, %126, %118
  br label %129

129:                                              ; preds = %47, %128, %70, %58
  br label %163

130:                                              ; preds = %2
  %131 = load %struct.TYPE_28__*, %struct.TYPE_28__** %7, align 8
  %132 = load %struct.TYPE_30__*, %struct.TYPE_30__** %5, align 8
  %133 = bitcast %struct.TYPE_30__* %132 to i64*
  %134 = getelementptr inbounds i64, i64* %133, i64 0
  %135 = load i64, i64* %134, align 8
  %136 = call i32 @ocs_htobe32(i64 %135)
  %137 = load %struct.TYPE_30__*, %struct.TYPE_30__** %5, align 8
  %138 = bitcast %struct.TYPE_30__* %137 to i64*
  %139 = getelementptr inbounds i64, i64* %138, i64 1
  %140 = load i64, i64* %139, align 8
  %141 = call i32 @ocs_htobe32(i64 %140)
  %142 = load %struct.TYPE_30__*, %struct.TYPE_30__** %5, align 8
  %143 = bitcast %struct.TYPE_30__* %142 to i64*
  %144 = getelementptr inbounds i64, i64* %143, i64 2
  %145 = load i64, i64* %144, align 8
  %146 = call i32 @ocs_htobe32(i64 %145)
  %147 = load %struct.TYPE_30__*, %struct.TYPE_30__** %5, align 8
  %148 = bitcast %struct.TYPE_30__* %147 to i64*
  %149 = getelementptr inbounds i64, i64* %148, i64 3
  %150 = load i64, i64* %149, align 8
  %151 = call i32 @ocs_htobe32(i64 %150)
  %152 = load %struct.TYPE_30__*, %struct.TYPE_30__** %5, align 8
  %153 = bitcast %struct.TYPE_30__* %152 to i64*
  %154 = getelementptr inbounds i64, i64* %153, i64 4
  %155 = load i64, i64* %154, align 8
  %156 = call i32 @ocs_htobe32(i64 %155)
  %157 = load %struct.TYPE_30__*, %struct.TYPE_30__** %5, align 8
  %158 = bitcast %struct.TYPE_30__* %157 to i64*
  %159 = getelementptr inbounds i64, i64* %158, i64 5
  %160 = load i64, i64* %159, align 8
  %161 = call i32 @ocs_htobe32(i64 %160)
  %162 = call i32 @node_printf(%struct.TYPE_28__* %131, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str, i64 0, i64 0), i32 %136, i32 %141, i32 %146, i32 %151, i32 %156, i32 %161)
  br label %163

163:                                              ; preds = %130, %129
  %164 = load i32, i32* %8, align 4
  ret i32 %164
}

declare dso_local i32 @fc_be24toh(i32) #1

declare dso_local i32 @ocs_assert(i32, i32) #1

declare dso_local i32 @ocs_node_recv_els_frame(%struct.TYPE_28__*, %struct.TYPE_29__*) #1

declare dso_local i32 @ocs_node_recv_abts_frame(%struct.TYPE_28__*, %struct.TYPE_29__*) #1

declare dso_local i32 @ocs_node_recv_bls_no_sit(%struct.TYPE_28__*, %struct.TYPE_29__*) #1

declare dso_local i32 @ocs_dispatch_fcp_cmd(%struct.TYPE_28__*, %struct.TYPE_29__*) #1

declare dso_local i32 @ocs_dispatch_fcp_cmd_auto_xfer_rdy(%struct.TYPE_28__*, %struct.TYPE_29__*) #1

declare dso_local i32 @ocs_node_recv_fcp_cmd(%struct.TYPE_28__*, %struct.TYPE_29__*) #1

declare dso_local i32 @ocs_dispatch_fcp_data(%struct.TYPE_28__*, %struct.TYPE_29__*) #1

declare dso_local i32 @ocs_node_recv_ct_frame(%struct.TYPE_28__*, %struct.TYPE_29__*) #1

declare dso_local i32 @node_printf(%struct.TYPE_28__*, i8*, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @ocs_htobe32(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
