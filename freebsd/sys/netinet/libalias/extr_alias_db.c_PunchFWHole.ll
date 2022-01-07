; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netinet/libalias/extr_alias_db.c_PunchFWHole.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netinet/libalias/extr_alias_db.c_PunchFWHole.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.alias_link = type { i64, %struct.TYPE_4__, %struct.libalias* }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }
%struct.libalias = type { i32, i64, i32, i32, i32, i32 }
%struct.ip_fw = type { i32 }

@PKT_ALIAS_PUNCH_FW = common dso_local global i32 0, align 4
@LINK_TCP = common dso_local global i64 0, align 8
@O_ACCEPT = common dso_local global i32 0, align 4
@IPPROTO_TCP = common dso_local global i32 0, align 4
@IPPROTO_IP = common dso_local global i32 0, align 4
@IP_FW_ADD = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [45 x i8] c"alias punch inbound(1) setsockopt(IP_FW_ADD)\00", align 1
@.str.1 = private unnamed_addr constant [45 x i8] c"alias punch inbound(2) setsockopt(IP_FW_ADD)\00", align 1
@stderr = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @PunchFWHole(%struct.alias_link* %0) #0 {
  %2 = alloca %struct.alias_link*, align 8
  %3 = alloca %struct.libalias*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.ip_fw, align 4
  %6 = alloca i32, align 4
  %7 = alloca [255 x i32], align 16
  %8 = alloca i32, align 4
  store %struct.alias_link* %0, %struct.alias_link** %2, align 8
  %9 = load %struct.alias_link*, %struct.alias_link** %2, align 8
  %10 = getelementptr inbounds %struct.alias_link, %struct.alias_link* %9, i32 0, i32 2
  %11 = load %struct.libalias*, %struct.libalias** %10, align 8
  store %struct.libalias* %11, %struct.libalias** %3, align 8
  %12 = load %struct.libalias*, %struct.libalias** %3, align 8
  %13 = getelementptr inbounds %struct.libalias, %struct.libalias* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = load i32, i32* @PKT_ALIAS_PUNCH_FW, align 4
  %16 = and i32 %14, %15
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %29

18:                                               ; preds = %1
  %19 = load %struct.libalias*, %struct.libalias** %3, align 8
  %20 = getelementptr inbounds %struct.libalias, %struct.libalias* %19, i32 0, i32 1
  %21 = load i64, i64* %20, align 8
  %22 = icmp slt i64 %21, 0
  br i1 %22, label %29, label %23

23:                                               ; preds = %18
  %24 = load %struct.alias_link*, %struct.alias_link** %2, align 8
  %25 = getelementptr inbounds %struct.alias_link, %struct.alias_link* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = load i64, i64* @LINK_TCP, align 8
  %28 = icmp ne i64 %26, %27
  br i1 %28, label %29, label %30

29:                                               ; preds = %23, %18, %1
  br label %188

30:                                               ; preds = %23
  %31 = call i32 @memset(%struct.ip_fw* %5, i32 0, i32 4)
  %32 = load %struct.libalias*, %struct.libalias** %3, align 8
  %33 = getelementptr inbounds %struct.libalias, %struct.libalias* %32, i32 0, i32 2
  %34 = load i32, i32* %33, align 8
  store i32 %34, i32* %6, align 4
  br label %35

35:                                               ; preds = %56, %30
  %36 = load i32, i32* %6, align 4
  %37 = load %struct.libalias*, %struct.libalias** %3, align 8
  %38 = getelementptr inbounds %struct.libalias, %struct.libalias* %37, i32 0, i32 3
  %39 = load i32, i32* %38, align 4
  %40 = load %struct.libalias*, %struct.libalias** %3, align 8
  %41 = getelementptr inbounds %struct.libalias, %struct.libalias* %40, i32 0, i32 4
  %42 = load i32, i32* %41, align 8
  %43 = add nsw i32 %39, %42
  %44 = icmp slt i32 %36, %43
  br i1 %44, label %45, label %53

45:                                               ; preds = %35
  %46 = load %struct.libalias*, %struct.libalias** %3, align 8
  %47 = load %struct.libalias*, %struct.libalias** %3, align 8
  %48 = getelementptr inbounds %struct.libalias, %struct.libalias* %47, i32 0, i32 5
  %49 = load i32, i32* %48, align 4
  %50 = load i32, i32* %6, align 4
  %51 = call i64 @fw_tstfield(%struct.libalias* %46, i32 %49, i32 %50)
  %52 = icmp ne i64 %51, 0
  br label %53

53:                                               ; preds = %45, %35
  %54 = phi i1 [ false, %35 ], [ %52, %45 ]
  br i1 %54, label %55, label %59

55:                                               ; preds = %53
  br label %56

56:                                               ; preds = %55
  %57 = load i32, i32* %6, align 4
  %58 = add nsw i32 %57, 1
  store i32 %58, i32* %6, align 4
  br label %35

59:                                               ; preds = %53
  %60 = load i32, i32* %6, align 4
  %61 = load %struct.libalias*, %struct.libalias** %3, align 8
  %62 = getelementptr inbounds %struct.libalias, %struct.libalias* %61, i32 0, i32 3
  %63 = load i32, i32* %62, align 4
  %64 = load %struct.libalias*, %struct.libalias** %3, align 8
  %65 = getelementptr inbounds %struct.libalias, %struct.libalias* %64, i32 0, i32 4
  %66 = load i32, i32* %65, align 8
  %67 = add nsw i32 %63, %66
  %68 = icmp eq i32 %60, %67
  br i1 %68, label %69, label %106

69:                                               ; preds = %59
  %70 = load %struct.libalias*, %struct.libalias** %3, align 8
  %71 = getelementptr inbounds %struct.libalias, %struct.libalias* %70, i32 0, i32 3
  %72 = load i32, i32* %71, align 4
  store i32 %72, i32* %6, align 4
  br label %73

73:                                               ; preds = %90, %69
  %74 = load i32, i32* %6, align 4
  %75 = load %struct.libalias*, %struct.libalias** %3, align 8
  %76 = getelementptr inbounds %struct.libalias, %struct.libalias* %75, i32 0, i32 2
  %77 = load i32, i32* %76, align 8
  %78 = icmp slt i32 %74, %77
  br i1 %78, label %79, label %87

79:                                               ; preds = %73
  %80 = load %struct.libalias*, %struct.libalias** %3, align 8
  %81 = load %struct.libalias*, %struct.libalias** %3, align 8
  %82 = getelementptr inbounds %struct.libalias, %struct.libalias* %81, i32 0, i32 5
  %83 = load i32, i32* %82, align 4
  %84 = load i32, i32* %6, align 4
  %85 = call i64 @fw_tstfield(%struct.libalias* %80, i32 %83, i32 %84)
  %86 = icmp ne i64 %85, 0
  br label %87

87:                                               ; preds = %79, %73
  %88 = phi i1 [ false, %73 ], [ %86, %79 ]
  br i1 %88, label %89, label %93

89:                                               ; preds = %87
  br label %90

90:                                               ; preds = %89
  %91 = load i32, i32* %6, align 4
  %92 = add nsw i32 %91, 1
  store i32 %92, i32* %6, align 4
  br label %73

93:                                               ; preds = %87
  %94 = load i32, i32* %6, align 4
  %95 = load %struct.libalias*, %struct.libalias** %3, align 8
  %96 = getelementptr inbounds %struct.libalias, %struct.libalias* %95, i32 0, i32 2
  %97 = load i32, i32* %96, align 8
  %98 = icmp eq i32 %94, %97
  br i1 %98, label %99, label %105

99:                                               ; preds = %93
  %100 = load %struct.libalias*, %struct.libalias** %3, align 8
  %101 = getelementptr inbounds %struct.libalias, %struct.libalias* %100, i32 0, i32 3
  %102 = load i32, i32* %101, align 4
  %103 = load %struct.libalias*, %struct.libalias** %3, align 8
  %104 = getelementptr inbounds %struct.libalias, %struct.libalias* %103, i32 0, i32 2
  store i32 %102, i32* %104, align 8
  br label %188

105:                                              ; preds = %93
  br label %106

106:                                              ; preds = %105, %59
  %107 = load i32, i32* %6, align 4
  %108 = add nsw i32 %107, 1
  %109 = load %struct.libalias*, %struct.libalias** %3, align 8
  %110 = getelementptr inbounds %struct.libalias, %struct.libalias* %109, i32 0, i32 2
  store i32 %108, i32* %110, align 8
  %111 = load %struct.alias_link*, %struct.alias_link** %2, align 8
  %112 = call i64 @GetOriginalPort(%struct.alias_link* %111)
  %113 = icmp ne i64 %112, 0
  br i1 %113, label %114, label %175

114:                                              ; preds = %106
  %115 = load %struct.alias_link*, %struct.alias_link** %2, align 8
  %116 = call i64 @GetDestPort(%struct.alias_link* %115)
  %117 = icmp ne i64 %116, 0
  br i1 %117, label %118, label %175

118:                                              ; preds = %114
  %119 = getelementptr inbounds [255 x i32], [255 x i32]* %7, i64 0, i64 0
  %120 = load i32, i32* %6, align 4
  %121 = load i32, i32* @O_ACCEPT, align 4
  %122 = load i32, i32* @IPPROTO_TCP, align 4
  %123 = load %struct.alias_link*, %struct.alias_link** %2, align 8
  %124 = call i32 @GetOriginalAddress(%struct.alias_link* %123)
  %125 = load %struct.alias_link*, %struct.alias_link** %2, align 8
  %126 = call i64 @GetOriginalPort(%struct.alias_link* %125)
  %127 = call i32 @ntohs(i64 %126)
  %128 = load %struct.alias_link*, %struct.alias_link** %2, align 8
  %129 = call i32 @GetDestAddress(%struct.alias_link* %128)
  %130 = load %struct.alias_link*, %struct.alias_link** %2, align 8
  %131 = call i64 @GetDestPort(%struct.alias_link* %130)
  %132 = call i32 @ntohs(i64 %131)
  %133 = call i32 @fill_rule(i32* %119, i32 1020, i32 %120, i32 %121, i32 %122, i32 %124, i32 %127, i32 %129, i32 %132)
  store i32 %133, i32* %8, align 4
  %134 = load %struct.libalias*, %struct.libalias** %3, align 8
  %135 = getelementptr inbounds %struct.libalias, %struct.libalias* %134, i32 0, i32 1
  %136 = load i64, i64* %135, align 8
  %137 = load i32, i32* @IPPROTO_IP, align 4
  %138 = load i32, i32* @IP_FW_ADD, align 4
  %139 = getelementptr inbounds [255 x i32], [255 x i32]* %7, i64 0, i64 0
  %140 = load i32, i32* %8, align 4
  %141 = call i32 @setsockopt(i64 %136, i32 %137, i32 %138, i32* %139, i32 %140)
  store i32 %141, i32* %4, align 4
  %142 = load i32, i32* %4, align 4
  %143 = icmp ne i32 %142, 0
  br i1 %143, label %144, label %146

144:                                              ; preds = %118
  %145 = call i32 @err(i32 1, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str, i64 0, i64 0))
  br label %146

146:                                              ; preds = %144, %118
  %147 = getelementptr inbounds [255 x i32], [255 x i32]* %7, i64 0, i64 0
  %148 = load i32, i32* %6, align 4
  %149 = load i32, i32* @O_ACCEPT, align 4
  %150 = load i32, i32* @IPPROTO_TCP, align 4
  %151 = load %struct.alias_link*, %struct.alias_link** %2, align 8
  %152 = call i32 @GetDestAddress(%struct.alias_link* %151)
  %153 = load %struct.alias_link*, %struct.alias_link** %2, align 8
  %154 = call i64 @GetDestPort(%struct.alias_link* %153)
  %155 = call i32 @ntohs(i64 %154)
  %156 = load %struct.alias_link*, %struct.alias_link** %2, align 8
  %157 = call i32 @GetOriginalAddress(%struct.alias_link* %156)
  %158 = load %struct.alias_link*, %struct.alias_link** %2, align 8
  %159 = call i64 @GetOriginalPort(%struct.alias_link* %158)
  %160 = call i32 @ntohs(i64 %159)
  %161 = call i32 @fill_rule(i32* %147, i32 1020, i32 %148, i32 %149, i32 %150, i32 %152, i32 %155, i32 %157, i32 %160)
  store i32 %161, i32* %8, align 4
  %162 = load %struct.libalias*, %struct.libalias** %3, align 8
  %163 = getelementptr inbounds %struct.libalias, %struct.libalias* %162, i32 0, i32 1
  %164 = load i64, i64* %163, align 8
  %165 = load i32, i32* @IPPROTO_IP, align 4
  %166 = load i32, i32* @IP_FW_ADD, align 4
  %167 = getelementptr inbounds [255 x i32], [255 x i32]* %7, i64 0, i64 0
  %168 = load i32, i32* %8, align 4
  %169 = call i32 @setsockopt(i64 %164, i32 %165, i32 %166, i32* %167, i32 %168)
  store i32 %169, i32* %4, align 4
  %170 = load i32, i32* %4, align 4
  %171 = icmp ne i32 %170, 0
  br i1 %171, label %172, label %174

172:                                              ; preds = %146
  %173 = call i32 @err(i32 1, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.1, i64 0, i64 0))
  br label %174

174:                                              ; preds = %172, %146
  br label %175

175:                                              ; preds = %174, %114, %106
  %176 = load i32, i32* %6, align 4
  %177 = load %struct.alias_link*, %struct.alias_link** %2, align 8
  %178 = getelementptr inbounds %struct.alias_link, %struct.alias_link* %177, i32 0, i32 1
  %179 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %178, i32 0, i32 0
  %180 = load %struct.TYPE_3__*, %struct.TYPE_3__** %179, align 8
  %181 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %180, i32 0, i32 0
  store i32 %176, i32* %181, align 4
  %182 = load %struct.libalias*, %struct.libalias** %3, align 8
  %183 = load %struct.libalias*, %struct.libalias** %3, align 8
  %184 = getelementptr inbounds %struct.libalias, %struct.libalias* %183, i32 0, i32 5
  %185 = load i32, i32* %184, align 4
  %186 = load i32, i32* %6, align 4
  %187 = call i32 @fw_setfield(%struct.libalias* %182, i32 %185, i32 %186)
  br label %188

188:                                              ; preds = %175, %99, %29
  ret void
}

declare dso_local i32 @memset(%struct.ip_fw*, i32, i32) #1

declare dso_local i64 @fw_tstfield(%struct.libalias*, i32, i32) #1

declare dso_local i64 @GetOriginalPort(%struct.alias_link*) #1

declare dso_local i64 @GetDestPort(%struct.alias_link*) #1

declare dso_local i32 @fill_rule(i32*, i32, i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @GetOriginalAddress(%struct.alias_link*) #1

declare dso_local i32 @ntohs(i64) #1

declare dso_local i32 @GetDestAddress(%struct.alias_link*) #1

declare dso_local i32 @setsockopt(i64, i32, i32, i32*, i32) #1

declare dso_local i32 @err(i32, i8*) #1

declare dso_local i32 @fw_setfield(%struct.libalias*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
