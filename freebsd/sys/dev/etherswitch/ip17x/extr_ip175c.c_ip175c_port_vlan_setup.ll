; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/etherswitch/ip17x/extr_ip175c.c_ip175c_port_vlan_setup.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/etherswitch/ip17x/extr_ip175c.c_ip175c_port_vlan_setup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ip17x_softc = type { i32, i32, i32*, i32, %struct.ip17x_vlan*, %struct.TYPE_2__ }
%struct.ip17x_vlan = type { i32 }
%struct.TYPE_2__ = type { i32 }

@IP175X_NUM_PORTS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [38 x i8] c"cpuport != 5 not supported for IP175C\00", align 1
@.str.1 = private unnamed_addr constant [39 x i8] c"numports != 6 not supported for IP175C\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ip17x_softc*)* @ip175c_port_vlan_setup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ip175c_port_vlan_setup(%struct.ip17x_softc* %0) #0 {
  %2 = alloca %struct.ip17x_softc*, align 8
  %3 = alloca %struct.ip17x_vlan*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.ip17x_softc* %0, %struct.ip17x_softc** %2, align 8
  %10 = load i32, i32* @IP175X_NUM_PORTS, align 4
  %11 = zext i32 %10 to i64
  %12 = call i8* @llvm.stacksave()
  store i8* %12, i8** %4, align 8
  %13 = alloca i32, i64 %11, align 16
  store i64 %11, i64* %5, align 8
  %14 = load i32, i32* @IP175X_NUM_PORTS, align 4
  %15 = sdiv i32 %14, 2
  %16 = zext i32 %15 to i64
  %17 = alloca i32, i64 %16, align 16
  store i64 %16, i64* %6, align 8
  %18 = load %struct.ip17x_softc*, %struct.ip17x_softc** %2, align 8
  %19 = getelementptr inbounds %struct.ip17x_softc, %struct.ip17x_softc* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = icmp eq i32 %20, 5
  %22 = zext i1 %21 to i32
  %23 = call i32 @KASSERT(i32 %22, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0))
  %24 = load %struct.ip17x_softc*, %struct.ip17x_softc** %2, align 8
  %25 = getelementptr inbounds %struct.ip17x_softc, %struct.ip17x_softc* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = icmp eq i32 %26, 6
  %28 = zext i1 %27 to i32
  %29 = call i32 @KASSERT(i32 %28, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.1, i64 0, i64 0))
  %30 = mul nuw i64 4, %11
  %31 = trunc i64 %30 to i32
  %32 = call i32 @memset(i32* %13, i32 0, i32 %31)
  store i32 0, i32* %7, align 4
  br label %33

33:                                               ; preds = %60, %1
  %34 = load i32, i32* %7, align 4
  %35 = load %struct.ip17x_softc*, %struct.ip17x_softc** %2, align 8
  %36 = getelementptr inbounds %struct.ip17x_softc, %struct.ip17x_softc* %35, i32 0, i32 5
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = icmp slt i32 %34, %38
  br i1 %39, label %40, label %63

40:                                               ; preds = %33
  %41 = load %struct.ip17x_softc*, %struct.ip17x_softc** %2, align 8
  %42 = getelementptr inbounds %struct.ip17x_softc, %struct.ip17x_softc* %41, i32 0, i32 2
  %43 = load i32*, i32** %42, align 8
  %44 = load i32, i32* %7, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds i32, i32* %43, i64 %45
  %47 = load i32, i32* %46, align 4
  store i32 %47, i32* %9, align 4
  %48 = load %struct.ip17x_softc*, %struct.ip17x_softc** %2, align 8
  %49 = getelementptr inbounds %struct.ip17x_softc, %struct.ip17x_softc* %48, i32 0, i32 4
  %50 = load %struct.ip17x_vlan*, %struct.ip17x_vlan** %49, align 8
  %51 = load i32, i32* %7, align 4
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds %struct.ip17x_vlan, %struct.ip17x_vlan* %50, i64 %52
  store %struct.ip17x_vlan* %53, %struct.ip17x_vlan** %3, align 8
  %54 = load %struct.ip17x_vlan*, %struct.ip17x_vlan** %3, align 8
  %55 = getelementptr inbounds %struct.ip17x_vlan, %struct.ip17x_vlan* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = load i32, i32* %9, align 4
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds i32, i32* %13, i64 %58
  store i32 %56, i32* %59, align 4
  br label %60

60:                                               ; preds = %40
  %61 = load i32, i32* %7, align 4
  %62 = add nsw i32 %61, 1
  store i32 %62, i32* %7, align 4
  br label %33

63:                                               ; preds = %33
  store i32 0, i32* %7, align 4
  br label %64

64:                                               ; preds = %98, %63
  %65 = load i32, i32* %7, align 4
  %66 = load %struct.ip17x_softc*, %struct.ip17x_softc** %2, align 8
  %67 = getelementptr inbounds %struct.ip17x_softc, %struct.ip17x_softc* %66, i32 0, i32 1
  %68 = load i32, i32* %67, align 4
  %69 = icmp slt i32 %65, %68
  br i1 %69, label %70, label %101

70:                                               ; preds = %64
  %71 = load i32, i32* %7, align 4
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds i32, i32* %13, i64 %72
  %74 = load i32, i32* %73, align 4
  %75 = load %struct.ip17x_softc*, %struct.ip17x_softc** %2, align 8
  %76 = getelementptr inbounds %struct.ip17x_softc, %struct.ip17x_softc* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 8
  %78 = shl i32 1, %77
  %79 = and i32 %74, %78
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %97

81:                                               ; preds = %70
  %82 = load i32, i32* %7, align 4
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds i32, i32* %13, i64 %83
  %85 = load i32, i32* %84, align 4
  %86 = or i32 %85, 128
  store i32 %86, i32* %84, align 4
  %87 = load %struct.ip17x_softc*, %struct.ip17x_softc** %2, align 8
  %88 = getelementptr inbounds %struct.ip17x_softc, %struct.ip17x_softc* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 8
  %90 = shl i32 1, %89
  %91 = xor i32 %90, -1
  %92 = load i32, i32* %7, align 4
  %93 = sext i32 %92 to i64
  %94 = getelementptr inbounds i32, i32* %13, i64 %93
  %95 = load i32, i32* %94, align 4
  %96 = and i32 %95, %91
  store i32 %96, i32* %94, align 4
  br label %97

97:                                               ; preds = %81, %70
  br label %98

98:                                               ; preds = %97
  %99 = load i32, i32* %7, align 4
  %100 = add nsw i32 %99, 1
  store i32 %100, i32* %7, align 4
  br label %64

101:                                              ; preds = %64
  %102 = mul nuw i64 4, %16
  %103 = trunc i64 %102 to i32
  %104 = call i32 @memset(i32* %17, i32 0, i32 %103)
  store i32 0, i32* %7, align 4
  br label %105

105:                                              ; preds = %129, %101
  %106 = load i32, i32* %7, align 4
  %107 = load %struct.ip17x_softc*, %struct.ip17x_softc** %2, align 8
  %108 = getelementptr inbounds %struct.ip17x_softc, %struct.ip17x_softc* %107, i32 0, i32 1
  %109 = load i32, i32* %108, align 4
  %110 = sdiv i32 %109, 2
  %111 = icmp slt i32 %106, %110
  br i1 %111, label %112, label %132

112:                                              ; preds = %105
  %113 = load i32, i32* %7, align 4
  %114 = mul nsw i32 %113, 2
  %115 = sext i32 %114 to i64
  %116 = getelementptr inbounds i32, i32* %13, i64 %115
  %117 = load i32, i32* %116, align 4
  %118 = shl i32 %117, 8
  %119 = load i32, i32* %7, align 4
  %120 = mul nsw i32 %119, 2
  %121 = add nsw i32 %120, 1
  %122 = sext i32 %121 to i64
  %123 = getelementptr inbounds i32, i32* %13, i64 %122
  %124 = load i32, i32* %123, align 4
  %125 = or i32 %118, %124
  %126 = load i32, i32* %7, align 4
  %127 = sext i32 %126 to i64
  %128 = getelementptr inbounds i32, i32* %17, i64 %127
  store i32 %125, i32* %128, align 4
  br label %129

129:                                              ; preds = %112
  %130 = load i32, i32* %7, align 4
  %131 = add nsw i32 %130, 1
  store i32 %131, i32* %7, align 4
  br label %105

132:                                              ; preds = %105
  %133 = load %struct.ip17x_softc*, %struct.ip17x_softc** %2, align 8
  %134 = getelementptr inbounds %struct.ip17x_softc, %struct.ip17x_softc* %133, i32 0, i32 3
  %135 = load i32, i32* %134, align 8
  %136 = getelementptr inbounds i32, i32* %17, i64 0
  %137 = load i32, i32* %136, align 16
  %138 = call i32 @ip17x_writephy(i32 %135, i32 29, i32 19, i32 %137)
  store i32 %138, i32* %8, align 4
  %139 = load i32, i32* %8, align 4
  %140 = icmp eq i32 %139, 0
  br i1 %140, label %141, label %148

141:                                              ; preds = %132
  %142 = load %struct.ip17x_softc*, %struct.ip17x_softc** %2, align 8
  %143 = getelementptr inbounds %struct.ip17x_softc, %struct.ip17x_softc* %142, i32 0, i32 3
  %144 = load i32, i32* %143, align 8
  %145 = getelementptr inbounds i32, i32* %17, i64 1
  %146 = load i32, i32* %145, align 4
  %147 = call i32 @ip17x_writephy(i32 %144, i32 29, i32 20, i32 %146)
  store i32 %147, i32* %8, align 4
  br label %148

148:                                              ; preds = %141, %132
  %149 = load i32, i32* %8, align 4
  %150 = icmp eq i32 %149, 0
  br i1 %150, label %151, label %158

151:                                              ; preds = %148
  %152 = load %struct.ip17x_softc*, %struct.ip17x_softc** %2, align 8
  %153 = getelementptr inbounds %struct.ip17x_softc, %struct.ip17x_softc* %152, i32 0, i32 3
  %154 = load i32, i32* %153, align 8
  %155 = getelementptr inbounds i32, i32* %17, i64 2
  %156 = load i32, i32* %155, align 8
  %157 = call i32 @ip17x_updatephy(i32 %154, i32 29, i32 21, i32 65280, i32 %156)
  store i32 %157, i32* %8, align 4
  br label %158

158:                                              ; preds = %151, %148
  %159 = load i32, i32* %8, align 4
  %160 = icmp eq i32 %159, 0
  br i1 %160, label %161, label %168

161:                                              ; preds = %158
  %162 = load %struct.ip17x_softc*, %struct.ip17x_softc** %2, align 8
  %163 = getelementptr inbounds %struct.ip17x_softc, %struct.ip17x_softc* %162, i32 0, i32 3
  %164 = load i32, i32* %163, align 8
  %165 = getelementptr inbounds i32, i32* %17, i64 2
  %166 = load i32, i32* %165, align 8
  %167 = call i32 @ip17x_updatephy(i32 %164, i32 30, i32 18, i32 255, i32 %166)
  store i32 %167, i32* %8, align 4
  br label %168

168:                                              ; preds = %161, %158
  %169 = load i32, i32* %8, align 4
  %170 = load i8*, i8** %4, align 8
  call void @llvm.stackrestore(i8* %170)
  ret i32 %169
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @KASSERT(i32, i8*) #2

declare dso_local i32 @memset(i32*, i32, i32) #2

declare dso_local i32 @ip17x_writephy(i32, i32, i32, i32) #2

declare dso_local i32 @ip17x_updatephy(i32, i32, i32, i32, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
