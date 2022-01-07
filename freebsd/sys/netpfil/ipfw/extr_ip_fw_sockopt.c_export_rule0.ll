; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netpfil/ipfw/extr_ip_fw_sockopt.c_export_rule0.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netpfil/ipfw/extr_ip_fw_sockopt.c_export_rule0.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ip_fw = type { i32, i32, i32, i32, i32, i32 }
%struct.ip_fw_rule0 = type { i32, i32, %struct.TYPE_10__*, i32, i32, i32, i32 }
%struct.TYPE_10__ = type { i32, i32 }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_9__ = type { i8*, %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32, i32 }
%struct.ip_fw_bcounter0 = type { i32 }

@IPFW_RULE_NOOPT = common dso_local global i32 0, align 4
@IP_FW_TARG = common dso_local global i32 0, align 4
@IP_FW_TABLEARG = common dso_local global i8* null, align 8
@IP_FW_NAT44_GLOBAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ip_fw*, %struct.ip_fw_rule0*, i32)* @export_rule0 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @export_rule0(%struct.ip_fw* %0, %struct.ip_fw_rule0* %1, i32 %2) #0 {
  %4 = alloca %struct.ip_fw*, align 8
  %5 = alloca %struct.ip_fw_rule0*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_10__*, align 8
  %10 = alloca %struct.TYPE_8__*, align 8
  %11 = alloca %struct.TYPE_9__*, align 8
  store %struct.ip_fw* %0, %struct.ip_fw** %4, align 8
  store %struct.ip_fw_rule0* %1, %struct.ip_fw_rule0** %5, align 8
  store i32 %2, i32* %6, align 4
  %12 = load %struct.ip_fw_rule0*, %struct.ip_fw_rule0** %5, align 8
  %13 = load i32, i32* %6, align 4
  %14 = call i32 @memset(%struct.ip_fw_rule0* %12, i32 0, i32 %13)
  %15 = load %struct.ip_fw*, %struct.ip_fw** %4, align 8
  %16 = getelementptr inbounds %struct.ip_fw, %struct.ip_fw* %15, i32 0, i32 5
  %17 = load i32, i32* %16, align 4
  %18 = load %struct.ip_fw_rule0*, %struct.ip_fw_rule0** %5, align 8
  %19 = getelementptr inbounds %struct.ip_fw_rule0, %struct.ip_fw_rule0* %18, i32 0, i32 6
  store i32 %17, i32* %19, align 4
  %20 = load %struct.ip_fw*, %struct.ip_fw** %4, align 8
  %21 = getelementptr inbounds %struct.ip_fw, %struct.ip_fw* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = load %struct.ip_fw_rule0*, %struct.ip_fw_rule0** %5, align 8
  %24 = getelementptr inbounds %struct.ip_fw_rule0, %struct.ip_fw_rule0* %23, i32 0, i32 0
  store i32 %22, i32* %24, align 8
  %25 = load %struct.ip_fw*, %struct.ip_fw** %4, align 8
  %26 = getelementptr inbounds %struct.ip_fw, %struct.ip_fw* %25, i32 0, i32 4
  %27 = load i32, i32* %26, align 4
  %28 = load %struct.ip_fw_rule0*, %struct.ip_fw_rule0** %5, align 8
  %29 = getelementptr inbounds %struct.ip_fw_rule0, %struct.ip_fw_rule0* %28, i32 0, i32 5
  store i32 %27, i32* %29, align 8
  %30 = load %struct.ip_fw*, %struct.ip_fw** %4, align 8
  %31 = getelementptr inbounds %struct.ip_fw, %struct.ip_fw* %30, i32 0, i32 3
  %32 = load i32, i32* %31, align 4
  %33 = load %struct.ip_fw_rule0*, %struct.ip_fw_rule0** %5, align 8
  %34 = getelementptr inbounds %struct.ip_fw_rule0, %struct.ip_fw_rule0* %33, i32 0, i32 4
  store i32 %32, i32* %34, align 4
  %35 = load %struct.ip_fw*, %struct.ip_fw** %4, align 8
  %36 = getelementptr inbounds %struct.ip_fw, %struct.ip_fw* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = load i32, i32* @IPFW_RULE_NOOPT, align 4
  %39 = and i32 %37, %38
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %46

41:                                               ; preds = %3
  %42 = load %struct.ip_fw_rule0*, %struct.ip_fw_rule0** %5, align 8
  %43 = getelementptr inbounds %struct.ip_fw_rule0, %struct.ip_fw_rule0* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  %45 = or i32 %44, 1
  store i32 %45, i32* %43, align 4
  br label %46

46:                                               ; preds = %41, %3
  %47 = load %struct.ip_fw_rule0*, %struct.ip_fw_rule0** %5, align 8
  %48 = getelementptr inbounds %struct.ip_fw_rule0, %struct.ip_fw_rule0* %47, i32 0, i32 2
  %49 = load %struct.TYPE_10__*, %struct.TYPE_10__** %48, align 8
  %50 = load %struct.ip_fw*, %struct.ip_fw** %4, align 8
  %51 = getelementptr inbounds %struct.ip_fw, %struct.ip_fw* %50, i32 0, i32 2
  %52 = load i32, i32* %51, align 4
  %53 = load %struct.ip_fw*, %struct.ip_fw** %4, align 8
  %54 = getelementptr inbounds %struct.ip_fw, %struct.ip_fw* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = sext i32 %55 to i64
  %57 = mul i64 %56, 4
  %58 = trunc i64 %57 to i32
  %59 = call i32 @memcpy(%struct.TYPE_10__* %49, i32 %52, i32 %58)
  %60 = load %struct.ip_fw*, %struct.ip_fw** %4, align 8
  %61 = load %struct.ip_fw_rule0*, %struct.ip_fw_rule0** %5, align 8
  %62 = getelementptr inbounds %struct.ip_fw_rule0, %struct.ip_fw_rule0* %61, i32 0, i32 3
  %63 = bitcast i32* %62 to %struct.ip_fw_bcounter0*
  %64 = call i32 @export_cntr0_base(%struct.ip_fw* %60, %struct.ip_fw_bcounter0* %63)
  %65 = load %struct.ip_fw_rule0*, %struct.ip_fw_rule0** %5, align 8
  %66 = getelementptr inbounds %struct.ip_fw_rule0, %struct.ip_fw_rule0* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 8
  store i32 %67, i32* %8, align 4
  %68 = load %struct.ip_fw_rule0*, %struct.ip_fw_rule0** %5, align 8
  %69 = getelementptr inbounds %struct.ip_fw_rule0, %struct.ip_fw_rule0* %68, i32 0, i32 2
  %70 = load %struct.TYPE_10__*, %struct.TYPE_10__** %69, align 8
  store %struct.TYPE_10__* %70, %struct.TYPE_10__** %9, align 8
  store i32 0, i32* %7, align 4
  br label %71

71:                                               ; preds = %153, %46
  %72 = load i32, i32* %8, align 4
  %73 = icmp sgt i32 %72, 0
  br i1 %73, label %74, label %161

74:                                               ; preds = %71
  %75 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %76 = call i32 @F_LEN(%struct.TYPE_10__* %75)
  store i32 %76, i32* %7, align 4
  %77 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %78 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 4
  switch i32 %79, label %152 [
    i32 132, label %80
    i32 131, label %80
    i32 138, label %80
    i32 137, label %80
    i32 143, label %80
    i32 130, label %80
    i32 133, label %80
    i32 144, label %80
    i32 140, label %80
    i32 139, label %80
    i32 141, label %80
    i32 134, label %102
    i32 135, label %102
    i32 142, label %119
    i32 128, label %133
    i32 136, label %133
    i32 129, label %133
  ]

80:                                               ; preds = %74, %74, %74, %74, %74, %74, %74, %74, %74, %74, %74
  %81 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %82 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %81, i32 0, i32 1
  %83 = load i32, i32* %82, align 4
  %84 = load i32, i32* @IP_FW_TARG, align 4
  %85 = icmp eq i32 %83, %84
  br i1 %85, label %86, label %91

86:                                               ; preds = %80
  %87 = load i8*, i8** @IP_FW_TABLEARG, align 8
  %88 = ptrtoint i8* %87 to i32
  %89 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %90 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %89, i32 0, i32 1
  store i32 %88, i32* %90, align 4
  br label %101

91:                                               ; preds = %80
  %92 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %93 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %92, i32 0, i32 1
  %94 = load i32, i32* %93, align 4
  %95 = load i32, i32* @IP_FW_NAT44_GLOBAL, align 4
  %96 = icmp eq i32 %94, %95
  br i1 %96, label %97, label %100

97:                                               ; preds = %91
  %98 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %99 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %98, i32 0, i32 1
  store i32 0, i32* %99, align 4
  br label %100

100:                                              ; preds = %97, %91
  br label %101

101:                                              ; preds = %100, %86
  br label %152

102:                                              ; preds = %74, %74
  %103 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %104 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %103, i32 0, i32 1
  %105 = load i32, i32* %104, align 4
  %106 = load i32, i32* @IP_FW_TARG, align 4
  %107 = icmp eq i32 %105, %106
  br i1 %107, label %108, label %113

108:                                              ; preds = %102
  %109 = load i8*, i8** @IP_FW_TABLEARG, align 8
  %110 = ptrtoint i8* %109 to i32
  %111 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %112 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %111, i32 0, i32 1
  store i32 %110, i32* %112, align 4
  br label %118

113:                                              ; preds = %102
  %114 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %115 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %114, i32 0, i32 1
  %116 = load i32, i32* %115, align 4
  %117 = and i32 %116, -32769
  store i32 %117, i32* %115, align 4
  br label %118

118:                                              ; preds = %113, %108
  br label %152

119:                                              ; preds = %74
  %120 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %121 = bitcast %struct.TYPE_10__* %120 to %struct.TYPE_8__*
  store %struct.TYPE_8__* %121, %struct.TYPE_8__** %10, align 8
  %122 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %123 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %122, i32 0, i32 0
  %124 = load i32, i32* %123, align 4
  %125 = load i32, i32* @IP_FW_TARG, align 4
  %126 = icmp eq i32 %124, %125
  br i1 %126, label %127, label %132

127:                                              ; preds = %119
  %128 = load i8*, i8** @IP_FW_TABLEARG, align 8
  %129 = ptrtoint i8* %128 to i32
  %130 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %131 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %130, i32 0, i32 0
  store i32 %129, i32* %131, align 4
  br label %132

132:                                              ; preds = %127, %119
  br label %152

133:                                              ; preds = %74, %74, %74
  %134 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %135 = bitcast %struct.TYPE_10__* %134 to %struct.TYPE_9__*
  store %struct.TYPE_9__* %135, %struct.TYPE_9__** %11, align 8
  %136 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %137 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %136, i32 0, i32 0
  %138 = load i8*, i8** %137, align 8
  %139 = getelementptr inbounds i8, i8* %138, i64 0
  %140 = load i8, i8* %139, align 1
  %141 = sext i8 %140 to i32
  %142 = icmp ne i32 %141, 1
  br i1 %142, label %143, label %144

143:                                              ; preds = %133
  br label %152

144:                                              ; preds = %133
  %145 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %146 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %145, i32 0, i32 1
  %147 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %146, i32 0, i32 0
  %148 = load i32, i32* %147, align 8
  %149 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %150 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %149, i32 0, i32 1
  %151 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %150, i32 0, i32 1
  store i32 %148, i32* %151, align 4
  br label %152

152:                                              ; preds = %74, %144, %143, %132, %118, %101
  br label %153

153:                                              ; preds = %152
  %154 = load i32, i32* %7, align 4
  %155 = load i32, i32* %8, align 4
  %156 = sub nsw i32 %155, %154
  store i32 %156, i32* %8, align 4
  %157 = load i32, i32* %7, align 4
  %158 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %159 = sext i32 %157 to i64
  %160 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %158, i64 %159
  store %struct.TYPE_10__* %160, %struct.TYPE_10__** %9, align 8
  br label %71

161:                                              ; preds = %71
  ret void
}

declare dso_local i32 @memset(%struct.ip_fw_rule0*, i32, i32) #1

declare dso_local i32 @memcpy(%struct.TYPE_10__*, i32, i32) #1

declare dso_local i32 @export_cntr0_base(%struct.ip_fw*, %struct.ip_fw_bcounter0*) #1

declare dso_local i32 @F_LEN(%struct.TYPE_10__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
