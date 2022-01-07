; ModuleID = '/home/carl/AnghaBench/freebsd/sys/net/extr_if_bridge.c_bridge_rtupdate.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/net/extr_if_bridge.c_bridge_rtupdate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bridge_softc = type { i64, i64, i64, i32 }
%struct.bridge_iflist = type { i64, i64, i32, i32 }
%struct.bridge_rtnode = type { i64, i32, i64, %struct.bridge_iflist*, i32 }

@EINVAL = common dso_local global i32 0, align 4
@ENOSPC = common dso_local global i32 0, align 4
@V_bridge_rtnode_zone = common dso_local global i32 0, align 4
@M_NOWAIT = common dso_local global i32 0, align 4
@M_ZERO = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@IFBIF_STICKY = common dso_local global i32 0, align 4
@IFBAF_STICKY = common dso_local global i64 0, align 8
@IFBAF_DYNAMIC = common dso_local global i64 0, align 8
@ETHER_ADDR_LEN = common dso_local global i32 0, align 4
@IFBAF_TYPEMASK = common dso_local global i64 0, align 8
@time_uptime = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bridge_softc*, i64*, i32, %struct.bridge_iflist*, i32, i64)* @bridge_rtupdate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bridge_rtupdate(%struct.bridge_softc* %0, i64* %1, i32 %2, %struct.bridge_iflist* %3, i32 %4, i64 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.bridge_softc*, align 8
  %9 = alloca i64*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.bridge_iflist*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  %14 = alloca %struct.bridge_rtnode*, align 8
  %15 = alloca i32, align 4
  store %struct.bridge_softc* %0, %struct.bridge_softc** %8, align 8
  store i64* %1, i64** %9, align 8
  store i32 %2, i32* %10, align 4
  store %struct.bridge_iflist* %3, %struct.bridge_iflist** %11, align 8
  store i32 %4, i32* %12, align 4
  store i64 %5, i64* %13, align 8
  %16 = load %struct.bridge_softc*, %struct.bridge_softc** %8, align 8
  %17 = call i32 @BRIDGE_LOCK_ASSERT(%struct.bridge_softc* %16)
  %18 = load i64*, i64** %9, align 8
  %19 = call i64 @ETHER_IS_MULTICAST(i64* %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %55, label %21

21:                                               ; preds = %6
  %22 = load i64*, i64** %9, align 8
  %23 = getelementptr inbounds i64, i64* %22, i64 0
  %24 = load i64, i64* %23, align 8
  %25 = icmp eq i64 %24, 0
  br i1 %25, label %26, label %51

26:                                               ; preds = %21
  %27 = load i64*, i64** %9, align 8
  %28 = getelementptr inbounds i64, i64* %27, i64 1
  %29 = load i64, i64* %28, align 8
  %30 = icmp eq i64 %29, 0
  br i1 %30, label %31, label %51

31:                                               ; preds = %26
  %32 = load i64*, i64** %9, align 8
  %33 = getelementptr inbounds i64, i64* %32, i64 2
  %34 = load i64, i64* %33, align 8
  %35 = icmp eq i64 %34, 0
  br i1 %35, label %36, label %51

36:                                               ; preds = %31
  %37 = load i64*, i64** %9, align 8
  %38 = getelementptr inbounds i64, i64* %37, i64 3
  %39 = load i64, i64* %38, align 8
  %40 = icmp eq i64 %39, 0
  br i1 %40, label %41, label %51

41:                                               ; preds = %36
  %42 = load i64*, i64** %9, align 8
  %43 = getelementptr inbounds i64, i64* %42, i64 4
  %44 = load i64, i64* %43, align 8
  %45 = icmp eq i64 %44, 0
  br i1 %45, label %46, label %51

46:                                               ; preds = %41
  %47 = load i64*, i64** %9, align 8
  %48 = getelementptr inbounds i64, i64* %47, i64 5
  %49 = load i64, i64* %48, align 8
  %50 = icmp eq i64 %49, 0
  br label %51

51:                                               ; preds = %46, %41, %36, %31, %26, %21
  %52 = phi i1 [ false, %41 ], [ false, %36 ], [ false, %31 ], [ false, %26 ], [ false, %21 ], [ %50, %46 ]
  %53 = zext i1 %52 to i32
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %57

55:                                               ; preds = %51, %6
  %56 = load i32, i32* @EINVAL, align 4
  store i32 %56, i32* %7, align 4
  br label %204

57:                                               ; preds = %51
  %58 = load i32, i32* %10, align 4
  %59 = icmp eq i32 %58, 0
  br i1 %59, label %60, label %61

60:                                               ; preds = %57
  store i32 1, i32* %10, align 4
  br label %61

61:                                               ; preds = %60, %57
  %62 = load %struct.bridge_softc*, %struct.bridge_softc** %8, align 8
  %63 = load i64*, i64** %9, align 8
  %64 = load i32, i32* %10, align 4
  %65 = call %struct.bridge_rtnode* @bridge_rtnode_lookup(%struct.bridge_softc* %62, i64* %63, i32 %64)
  store %struct.bridge_rtnode* %65, %struct.bridge_rtnode** %14, align 8
  %66 = icmp eq %struct.bridge_rtnode* %65, null
  br i1 %66, label %67, label %152

67:                                               ; preds = %61
  %68 = load %struct.bridge_softc*, %struct.bridge_softc** %8, align 8
  %69 = getelementptr inbounds %struct.bridge_softc, %struct.bridge_softc* %68, i32 0, i32 0
  %70 = load i64, i64* %69, align 8
  %71 = load %struct.bridge_softc*, %struct.bridge_softc** %8, align 8
  %72 = getelementptr inbounds %struct.bridge_softc, %struct.bridge_softc* %71, i32 0, i32 1
  %73 = load i64, i64* %72, align 8
  %74 = icmp sge i64 %70, %73
  br i1 %74, label %75, label %81

75:                                               ; preds = %67
  %76 = load %struct.bridge_softc*, %struct.bridge_softc** %8, align 8
  %77 = getelementptr inbounds %struct.bridge_softc, %struct.bridge_softc* %76, i32 0, i32 3
  %78 = load i32, i32* %77, align 8
  %79 = add nsw i32 %78, 1
  store i32 %79, i32* %77, align 8
  %80 = load i32, i32* @ENOSPC, align 4
  store i32 %80, i32* %7, align 4
  br label %204

81:                                               ; preds = %67
  %82 = load %struct.bridge_iflist*, %struct.bridge_iflist** %11, align 8
  %83 = getelementptr inbounds %struct.bridge_iflist, %struct.bridge_iflist* %82, i32 0, i32 0
  %84 = load i64, i64* %83, align 8
  %85 = icmp ne i64 %84, 0
  br i1 %85, label %86, label %100

86:                                               ; preds = %81
  %87 = load %struct.bridge_iflist*, %struct.bridge_iflist** %11, align 8
  %88 = getelementptr inbounds %struct.bridge_iflist, %struct.bridge_iflist* %87, i32 0, i32 1
  %89 = load i64, i64* %88, align 8
  %90 = load %struct.bridge_iflist*, %struct.bridge_iflist** %11, align 8
  %91 = getelementptr inbounds %struct.bridge_iflist, %struct.bridge_iflist* %90, i32 0, i32 0
  %92 = load i64, i64* %91, align 8
  %93 = icmp sge i64 %89, %92
  br i1 %93, label %94, label %100

94:                                               ; preds = %86
  %95 = load %struct.bridge_iflist*, %struct.bridge_iflist** %11, align 8
  %96 = getelementptr inbounds %struct.bridge_iflist, %struct.bridge_iflist* %95, i32 0, i32 3
  %97 = load i32, i32* %96, align 4
  %98 = add nsw i32 %97, 1
  store i32 %98, i32* %96, align 4
  %99 = load i32, i32* @ENOSPC, align 4
  store i32 %99, i32* %7, align 4
  br label %204

100:                                              ; preds = %86, %81
  %101 = load i32, i32* @V_bridge_rtnode_zone, align 4
  %102 = load i32, i32* @M_NOWAIT, align 4
  %103 = load i32, i32* @M_ZERO, align 4
  %104 = or i32 %102, %103
  %105 = call %struct.bridge_rtnode* @uma_zalloc(i32 %101, i32 %104)
  store %struct.bridge_rtnode* %105, %struct.bridge_rtnode** %14, align 8
  %106 = load %struct.bridge_rtnode*, %struct.bridge_rtnode** %14, align 8
  %107 = icmp eq %struct.bridge_rtnode* %106, null
  br i1 %107, label %108, label %110

108:                                              ; preds = %100
  %109 = load i32, i32* @ENOMEM, align 4
  store i32 %109, i32* %7, align 4
  br label %204

110:                                              ; preds = %100
  %111 = load %struct.bridge_iflist*, %struct.bridge_iflist** %11, align 8
  %112 = getelementptr inbounds %struct.bridge_iflist, %struct.bridge_iflist* %111, i32 0, i32 2
  %113 = load i32, i32* %112, align 8
  %114 = load i32, i32* @IFBIF_STICKY, align 4
  %115 = and i32 %113, %114
  %116 = icmp ne i32 %115, 0
  br i1 %116, label %117, label %121

117:                                              ; preds = %110
  %118 = load i64, i64* @IFBAF_STICKY, align 8
  %119 = load %struct.bridge_rtnode*, %struct.bridge_rtnode** %14, align 8
  %120 = getelementptr inbounds %struct.bridge_rtnode, %struct.bridge_rtnode* %119, i32 0, i32 0
  store i64 %118, i64* %120, align 8
  br label %125

121:                                              ; preds = %110
  %122 = load i64, i64* @IFBAF_DYNAMIC, align 8
  %123 = load %struct.bridge_rtnode*, %struct.bridge_rtnode** %14, align 8
  %124 = getelementptr inbounds %struct.bridge_rtnode, %struct.bridge_rtnode* %123, i32 0, i32 0
  store i64 %122, i64* %124, align 8
  br label %125

125:                                              ; preds = %121, %117
  %126 = load %struct.bridge_rtnode*, %struct.bridge_rtnode** %14, align 8
  %127 = getelementptr inbounds %struct.bridge_rtnode, %struct.bridge_rtnode* %126, i32 0, i32 4
  %128 = load i32, i32* %127, align 8
  %129 = load i64*, i64** %9, align 8
  %130 = load i32, i32* @ETHER_ADDR_LEN, align 4
  %131 = call i32 @memcpy(i32 %128, i64* %129, i32 %130)
  %132 = load i32, i32* %10, align 4
  %133 = load %struct.bridge_rtnode*, %struct.bridge_rtnode** %14, align 8
  %134 = getelementptr inbounds %struct.bridge_rtnode, %struct.bridge_rtnode* %133, i32 0, i32 1
  store i32 %132, i32* %134, align 8
  %135 = load %struct.bridge_softc*, %struct.bridge_softc** %8, align 8
  %136 = load %struct.bridge_rtnode*, %struct.bridge_rtnode** %14, align 8
  %137 = call i32 @bridge_rtnode_insert(%struct.bridge_softc* %135, %struct.bridge_rtnode* %136)
  store i32 %137, i32* %15, align 4
  %138 = icmp ne i32 %137, 0
  br i1 %138, label %139, label %144

139:                                              ; preds = %125
  %140 = load i32, i32* @V_bridge_rtnode_zone, align 4
  %141 = load %struct.bridge_rtnode*, %struct.bridge_rtnode** %14, align 8
  %142 = call i32 @uma_zfree(i32 %140, %struct.bridge_rtnode* %141)
  %143 = load i32, i32* %15, align 4
  store i32 %143, i32* %7, align 4
  br label %204

144:                                              ; preds = %125
  %145 = load %struct.bridge_iflist*, %struct.bridge_iflist** %11, align 8
  %146 = load %struct.bridge_rtnode*, %struct.bridge_rtnode** %14, align 8
  %147 = getelementptr inbounds %struct.bridge_rtnode, %struct.bridge_rtnode* %146, i32 0, i32 3
  store %struct.bridge_iflist* %145, %struct.bridge_iflist** %147, align 8
  %148 = load %struct.bridge_iflist*, %struct.bridge_iflist** %11, align 8
  %149 = getelementptr inbounds %struct.bridge_iflist, %struct.bridge_iflist* %148, i32 0, i32 1
  %150 = load i64, i64* %149, align 8
  %151 = add nsw i64 %150, 1
  store i64 %151, i64* %149, align 8
  br label %152

152:                                              ; preds = %144, %61
  %153 = load %struct.bridge_rtnode*, %struct.bridge_rtnode** %14, align 8
  %154 = getelementptr inbounds %struct.bridge_rtnode, %struct.bridge_rtnode* %153, i32 0, i32 0
  %155 = load i64, i64* %154, align 8
  %156 = load i64, i64* @IFBAF_TYPEMASK, align 8
  %157 = and i64 %155, %156
  %158 = load i64, i64* @IFBAF_DYNAMIC, align 8
  %159 = icmp eq i64 %157, %158
  br i1 %159, label %160, label %182

160:                                              ; preds = %152
  %161 = load %struct.bridge_rtnode*, %struct.bridge_rtnode** %14, align 8
  %162 = getelementptr inbounds %struct.bridge_rtnode, %struct.bridge_rtnode* %161, i32 0, i32 3
  %163 = load %struct.bridge_iflist*, %struct.bridge_iflist** %162, align 8
  %164 = load %struct.bridge_iflist*, %struct.bridge_iflist** %11, align 8
  %165 = icmp ne %struct.bridge_iflist* %163, %164
  br i1 %165, label %166, label %182

166:                                              ; preds = %160
  %167 = load %struct.bridge_rtnode*, %struct.bridge_rtnode** %14, align 8
  %168 = getelementptr inbounds %struct.bridge_rtnode, %struct.bridge_rtnode* %167, i32 0, i32 3
  %169 = load %struct.bridge_iflist*, %struct.bridge_iflist** %168, align 8
  %170 = getelementptr inbounds %struct.bridge_iflist, %struct.bridge_iflist* %169, i32 0, i32 1
  %171 = load i64, i64* %170, align 8
  %172 = add nsw i64 %171, -1
  store i64 %172, i64* %170, align 8
  %173 = load %struct.bridge_iflist*, %struct.bridge_iflist** %11, align 8
  %174 = load %struct.bridge_rtnode*, %struct.bridge_rtnode** %14, align 8
  %175 = getelementptr inbounds %struct.bridge_rtnode, %struct.bridge_rtnode* %174, i32 0, i32 3
  store %struct.bridge_iflist* %173, %struct.bridge_iflist** %175, align 8
  %176 = load %struct.bridge_rtnode*, %struct.bridge_rtnode** %14, align 8
  %177 = getelementptr inbounds %struct.bridge_rtnode, %struct.bridge_rtnode* %176, i32 0, i32 3
  %178 = load %struct.bridge_iflist*, %struct.bridge_iflist** %177, align 8
  %179 = getelementptr inbounds %struct.bridge_iflist, %struct.bridge_iflist* %178, i32 0, i32 1
  %180 = load i64, i64* %179, align 8
  %181 = add nsw i64 %180, 1
  store i64 %181, i64* %179, align 8
  br label %182

182:                                              ; preds = %166, %160, %152
  %183 = load i64, i64* %13, align 8
  %184 = load i64, i64* @IFBAF_TYPEMASK, align 8
  %185 = and i64 %183, %184
  %186 = load i64, i64* @IFBAF_DYNAMIC, align 8
  %187 = icmp eq i64 %185, %186
  br i1 %187, label %188, label %196

188:                                              ; preds = %182
  %189 = load i64, i64* @time_uptime, align 8
  %190 = load %struct.bridge_softc*, %struct.bridge_softc** %8, align 8
  %191 = getelementptr inbounds %struct.bridge_softc, %struct.bridge_softc* %190, i32 0, i32 2
  %192 = load i64, i64* %191, align 8
  %193 = add nsw i64 %189, %192
  %194 = load %struct.bridge_rtnode*, %struct.bridge_rtnode** %14, align 8
  %195 = getelementptr inbounds %struct.bridge_rtnode, %struct.bridge_rtnode* %194, i32 0, i32 2
  store i64 %193, i64* %195, align 8
  br label %196

196:                                              ; preds = %188, %182
  %197 = load i32, i32* %12, align 4
  %198 = icmp ne i32 %197, 0
  br i1 %198, label %199, label %203

199:                                              ; preds = %196
  %200 = load i64, i64* %13, align 8
  %201 = load %struct.bridge_rtnode*, %struct.bridge_rtnode** %14, align 8
  %202 = getelementptr inbounds %struct.bridge_rtnode, %struct.bridge_rtnode* %201, i32 0, i32 0
  store i64 %200, i64* %202, align 8
  br label %203

203:                                              ; preds = %199, %196
  store i32 0, i32* %7, align 4
  br label %204

204:                                              ; preds = %203, %139, %108, %94, %75, %55
  %205 = load i32, i32* %7, align 4
  ret i32 %205
}

declare dso_local i32 @BRIDGE_LOCK_ASSERT(%struct.bridge_softc*) #1

declare dso_local i64 @ETHER_IS_MULTICAST(i64*) #1

declare dso_local %struct.bridge_rtnode* @bridge_rtnode_lookup(%struct.bridge_softc*, i64*, i32) #1

declare dso_local %struct.bridge_rtnode* @uma_zalloc(i32, i32) #1

declare dso_local i32 @memcpy(i32, i64*, i32) #1

declare dso_local i32 @bridge_rtnode_insert(%struct.bridge_softc*, %struct.bridge_rtnode*) #1

declare dso_local i32 @uma_zfree(i32, %struct.bridge_rtnode*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
