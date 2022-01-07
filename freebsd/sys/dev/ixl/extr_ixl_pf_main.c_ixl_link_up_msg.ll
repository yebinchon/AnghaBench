; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ixl/extr_ixl_pf_main.c_ixl_link_up_msg.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ixl/extr_ixl_pf_main.c_ixl_link_up_msg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ixl_pf = type { %struct.TYPE_4__, %struct.i40e_hw }
%struct.TYPE_4__ = type { %struct.ifnet* }
%struct.ifnet = type { i32 }
%struct.i40e_hw = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32, i32, i32, i32 }

@I40E_AQ_REQUEST_FEC_RS = common dso_local global i32 0, align 4
@ixl_fec_string = common dso_local global i8** null, align 8
@I40E_AQ_REQUEST_FEC_KR = common dso_local global i32 0, align 4
@I40E_AQ_CONFIG_FEC_RS_ENA = common dso_local global i32 0, align 4
@I40E_AQ_CONFIG_FEC_KR_ENA = common dso_local global i32 0, align 4
@LOG_NOTICE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [102 x i8] c"%s: Link is up, %s Full Duplex, Requested FEC: %s, Negotiated FEC: %s, Autoneg: %s, Flow Control: %s\0A\00", align 1
@I40E_AQ_AN_COMPLETED = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [5 x i8] c"True\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"False\00", align 1
@I40E_AQ_LINK_PAUSE_TX = common dso_local global i32 0, align 4
@I40E_AQ_LINK_PAUSE_RX = common dso_local global i32 0, align 4
@ixl_fc_string = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ixl_link_up_msg(%struct.ixl_pf* %0) #0 {
  %2 = alloca %struct.ixl_pf*, align 8
  %3 = alloca %struct.i40e_hw*, align 8
  %4 = alloca %struct.ifnet*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  store %struct.ixl_pf* %0, %struct.ixl_pf** %2, align 8
  %8 = load %struct.ixl_pf*, %struct.ixl_pf** %2, align 8
  %9 = getelementptr inbounds %struct.ixl_pf, %struct.ixl_pf* %8, i32 0, i32 1
  store %struct.i40e_hw* %9, %struct.i40e_hw** %3, align 8
  %10 = load %struct.ixl_pf*, %struct.ixl_pf** %2, align 8
  %11 = getelementptr inbounds %struct.ixl_pf, %struct.ixl_pf* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 0
  %13 = load %struct.ifnet*, %struct.ifnet** %12, align 8
  store %struct.ifnet* %13, %struct.ifnet** %4, align 8
  %14 = load %struct.i40e_hw*, %struct.i40e_hw** %3, align 8
  %15 = getelementptr inbounds %struct.i40e_hw, %struct.i40e_hw* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  store i32 %18, i32* %7, align 4
  %19 = load i32, i32* %7, align 4
  %20 = load i32, i32* @I40E_AQ_REQUEST_FEC_RS, align 4
  %21 = and i32 %19, %20
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %27

23:                                               ; preds = %1
  %24 = load i8**, i8*** @ixl_fec_string, align 8
  %25 = getelementptr inbounds i8*, i8** %24, i64 0
  %26 = load i8*, i8** %25, align 8
  store i8* %26, i8** %5, align 8
  br label %41

27:                                               ; preds = %1
  %28 = load i32, i32* %7, align 4
  %29 = load i32, i32* @I40E_AQ_REQUEST_FEC_KR, align 4
  %30 = and i32 %28, %29
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %36

32:                                               ; preds = %27
  %33 = load i8**, i8*** @ixl_fec_string, align 8
  %34 = getelementptr inbounds i8*, i8** %33, i64 1
  %35 = load i8*, i8** %34, align 8
  store i8* %35, i8** %5, align 8
  br label %40

36:                                               ; preds = %27
  %37 = load i8**, i8*** @ixl_fec_string, align 8
  %38 = getelementptr inbounds i8*, i8** %37, i64 2
  %39 = load i8*, i8** %38, align 8
  store i8* %39, i8** %5, align 8
  br label %40

40:                                               ; preds = %36, %32
  br label %41

41:                                               ; preds = %40, %23
  %42 = load %struct.i40e_hw*, %struct.i40e_hw** %3, align 8
  %43 = getelementptr inbounds %struct.i40e_hw, %struct.i40e_hw* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  %47 = load i32, i32* @I40E_AQ_CONFIG_FEC_RS_ENA, align 4
  %48 = and i32 %46, %47
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %54

50:                                               ; preds = %41
  %51 = load i8**, i8*** @ixl_fec_string, align 8
  %52 = getelementptr inbounds i8*, i8** %51, i64 0
  %53 = load i8*, i8** %52, align 8
  store i8* %53, i8** %6, align 8
  br label %72

54:                                               ; preds = %41
  %55 = load %struct.i40e_hw*, %struct.i40e_hw** %3, align 8
  %56 = getelementptr inbounds %struct.i40e_hw, %struct.i40e_hw* %55, i32 0, i32 0
  %57 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %56, i32 0, i32 0
  %58 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 4
  %60 = load i32, i32* @I40E_AQ_CONFIG_FEC_KR_ENA, align 4
  %61 = and i32 %59, %60
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %67

63:                                               ; preds = %54
  %64 = load i8**, i8*** @ixl_fec_string, align 8
  %65 = getelementptr inbounds i8*, i8** %64, i64 1
  %66 = load i8*, i8** %65, align 8
  store i8* %66, i8** %6, align 8
  br label %71

67:                                               ; preds = %54
  %68 = load i8**, i8*** @ixl_fec_string, align 8
  %69 = getelementptr inbounds i8*, i8** %68, i64 2
  %70 = load i8*, i8** %69, align 8
  store i8* %70, i8** %6, align 8
  br label %71

71:                                               ; preds = %67, %63
  br label %72

72:                                               ; preds = %71, %50
  %73 = load i32, i32* @LOG_NOTICE, align 4
  %74 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %75 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 4
  %77 = load %struct.i40e_hw*, %struct.i40e_hw** %3, align 8
  %78 = getelementptr inbounds %struct.i40e_hw, %struct.i40e_hw* %77, i32 0, i32 0
  %79 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %78, i32 0, i32 0
  %80 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %79, i32 0, i32 3
  %81 = load i32, i32* %80, align 4
  %82 = call i32 @ixl_aq_speed_to_str(i32 %81)
  %83 = load i8*, i8** %5, align 8
  %84 = load i8*, i8** %6, align 8
  %85 = load %struct.i40e_hw*, %struct.i40e_hw** %3, align 8
  %86 = getelementptr inbounds %struct.i40e_hw, %struct.i40e_hw* %85, i32 0, i32 0
  %87 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %86, i32 0, i32 0
  %88 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %87, i32 0, i32 2
  %89 = load i32, i32* %88, align 4
  %90 = load i32, i32* @I40E_AQ_AN_COMPLETED, align 4
  %91 = and i32 %89, %90
  %92 = icmp ne i32 %91, 0
  %93 = zext i1 %92 to i64
  %94 = select i1 %92, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0)
  %95 = load %struct.i40e_hw*, %struct.i40e_hw** %3, align 8
  %96 = getelementptr inbounds %struct.i40e_hw, %struct.i40e_hw* %95, i32 0, i32 0
  %97 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %96, i32 0, i32 0
  %98 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %97, i32 0, i32 2
  %99 = load i32, i32* %98, align 4
  %100 = load i32, i32* @I40E_AQ_LINK_PAUSE_TX, align 4
  %101 = and i32 %99, %100
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %103, label %116

103:                                              ; preds = %72
  %104 = load %struct.i40e_hw*, %struct.i40e_hw** %3, align 8
  %105 = getelementptr inbounds %struct.i40e_hw, %struct.i40e_hw* %104, i32 0, i32 0
  %106 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %105, i32 0, i32 0
  %107 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %106, i32 0, i32 2
  %108 = load i32, i32* %107, align 4
  %109 = load i32, i32* @I40E_AQ_LINK_PAUSE_RX, align 4
  %110 = and i32 %108, %109
  %111 = icmp ne i32 %110, 0
  br i1 %111, label %112, label %116

112:                                              ; preds = %103
  %113 = load i32*, i32** @ixl_fc_string, align 8
  %114 = getelementptr inbounds i32, i32* %113, i64 3
  %115 = load i32, i32* %114, align 4
  br label %150

116:                                              ; preds = %103, %72
  %117 = load %struct.i40e_hw*, %struct.i40e_hw** %3, align 8
  %118 = getelementptr inbounds %struct.i40e_hw, %struct.i40e_hw* %117, i32 0, i32 0
  %119 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %118, i32 0, i32 0
  %120 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %119, i32 0, i32 2
  %121 = load i32, i32* %120, align 4
  %122 = load i32, i32* @I40E_AQ_LINK_PAUSE_TX, align 4
  %123 = and i32 %121, %122
  %124 = icmp ne i32 %123, 0
  br i1 %124, label %125, label %129

125:                                              ; preds = %116
  %126 = load i32*, i32** @ixl_fc_string, align 8
  %127 = getelementptr inbounds i32, i32* %126, i64 2
  %128 = load i32, i32* %127, align 4
  br label %148

129:                                              ; preds = %116
  %130 = load %struct.i40e_hw*, %struct.i40e_hw** %3, align 8
  %131 = getelementptr inbounds %struct.i40e_hw, %struct.i40e_hw* %130, i32 0, i32 0
  %132 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %131, i32 0, i32 0
  %133 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %132, i32 0, i32 2
  %134 = load i32, i32* %133, align 4
  %135 = load i32, i32* @I40E_AQ_LINK_PAUSE_RX, align 4
  %136 = and i32 %134, %135
  %137 = icmp ne i32 %136, 0
  br i1 %137, label %138, label %142

138:                                              ; preds = %129
  %139 = load i32*, i32** @ixl_fc_string, align 8
  %140 = getelementptr inbounds i32, i32* %139, i64 1
  %141 = load i32, i32* %140, align 4
  br label %146

142:                                              ; preds = %129
  %143 = load i32*, i32** @ixl_fc_string, align 8
  %144 = getelementptr inbounds i32, i32* %143, i64 0
  %145 = load i32, i32* %144, align 4
  br label %146

146:                                              ; preds = %142, %138
  %147 = phi i32 [ %141, %138 ], [ %145, %142 ]
  br label %148

148:                                              ; preds = %146, %125
  %149 = phi i32 [ %128, %125 ], [ %147, %146 ]
  br label %150

150:                                              ; preds = %148, %112
  %151 = phi i32 [ %115, %112 ], [ %149, %148 ]
  %152 = call i32 @log(i32 %73, i8* getelementptr inbounds ([102 x i8], [102 x i8]* @.str, i64 0, i64 0), i32 %76, i32 %82, i8* %83, i8* %84, i8* %94, i32 %151)
  ret void
}

declare dso_local i32 @log(i32, i8*, i32, i32, i8*, i8*, i8*, i32) #1

declare dso_local i32 @ixl_aq_speed_to_str(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
