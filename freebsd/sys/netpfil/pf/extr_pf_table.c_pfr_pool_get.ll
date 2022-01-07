; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netpfil/pf/extr_pf_table.c_pfr_pool_get.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netpfil/pf/extr_pf_table.c_pfr_pool_get.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pfr_ktable = type { i32, i32, %struct.TYPE_8__*, %struct.TYPE_7__*, i32, %struct.pfr_ktable* }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_7__ = type { i32 }
%struct.pf_addr = type { i32 }
%union.sockaddr_union = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32, i32 }
%struct.pfr_kentry = type { i32, %union.sockaddr_union }
%struct.TYPE_5__ = type { i32, i32 }

@PFR_TFLAG_ACTIVE = common dso_local global i32 0, align 4
@pfr_ffaddr = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @pfr_pool_get(%struct.pfr_ktable* %0, i32* %1, %struct.pf_addr* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.pfr_ktable*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.pf_addr*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.pf_addr*, align 8
  %11 = alloca %struct.pf_addr*, align 8
  %12 = alloca %struct.pf_addr*, align 8
  %13 = alloca %union.sockaddr_union, align 4
  %14 = alloca %union.sockaddr_union, align 4
  %15 = alloca %struct.pfr_kentry*, align 8
  %16 = alloca %struct.pfr_kentry*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  store %struct.pfr_ktable* %0, %struct.pfr_ktable** %6, align 8
  store i32* %1, i32** %7, align 8
  store %struct.pf_addr* %2, %struct.pf_addr** %8, align 8
  store i32 %3, i32* %9, align 4
  store %struct.pfr_kentry* null, %struct.pfr_kentry** %16, align 8
  store i32 -1, i32* %17, align 4
  store i32 0, i32* %18, align 4
  %19 = load i32, i32* %9, align 4
  switch i32 %19, label %30 [
    i32 129, label %20
    i32 128, label %25
  ]

20:                                               ; preds = %4
  %21 = bitcast %union.sockaddr_union* %13 to %struct.TYPE_5__*
  %22 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %21, i32 0, i32 0
  store i32 4, i32* %22, align 4
  %23 = bitcast %union.sockaddr_union* %13 to %struct.TYPE_5__*
  %24 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %23, i32 0, i32 1
  store i32 129, i32* %24, align 4
  br label %30

25:                                               ; preds = %4
  %26 = bitcast %union.sockaddr_union* %13 to %struct.TYPE_6__*
  %27 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %26, i32 0, i32 0
  store i32 4, i32* %27, align 4
  %28 = bitcast %union.sockaddr_union* %13 to %struct.TYPE_6__*
  %29 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %28, i32 0, i32 1
  store i32 128, i32* %29, align 4
  br label %30

30:                                               ; preds = %4, %25, %20
  %31 = load i32, i32* %9, align 4
  %32 = call %struct.pf_addr* @SUNION2PF(%union.sockaddr_union* %13, i32 %31)
  store %struct.pf_addr* %32, %struct.pf_addr** %10, align 8
  %33 = load %struct.pfr_ktable*, %struct.pfr_ktable** %6, align 8
  %34 = getelementptr inbounds %struct.pfr_ktable, %struct.pfr_ktable* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = load i32, i32* @PFR_TFLAG_ACTIVE, align 4
  %37 = and i32 %35, %36
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %48, label %39

39:                                               ; preds = %30
  %40 = load %struct.pfr_ktable*, %struct.pfr_ktable** %6, align 8
  %41 = getelementptr inbounds %struct.pfr_ktable, %struct.pfr_ktable* %40, i32 0, i32 5
  %42 = load %struct.pfr_ktable*, %struct.pfr_ktable** %41, align 8
  %43 = icmp ne %struct.pfr_ktable* %42, null
  br i1 %43, label %44, label %48

44:                                               ; preds = %39
  %45 = load %struct.pfr_ktable*, %struct.pfr_ktable** %6, align 8
  %46 = getelementptr inbounds %struct.pfr_ktable, %struct.pfr_ktable* %45, i32 0, i32 5
  %47 = load %struct.pfr_ktable*, %struct.pfr_ktable** %46, align 8
  store %struct.pfr_ktable* %47, %struct.pfr_ktable** %6, align 8
  br label %48

48:                                               ; preds = %44, %39, %30
  %49 = load %struct.pfr_ktable*, %struct.pfr_ktable** %6, align 8
  %50 = getelementptr inbounds %struct.pfr_ktable, %struct.pfr_ktable* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  %52 = load i32, i32* @PFR_TFLAG_ACTIVE, align 4
  %53 = and i32 %51, %52
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %56, label %55

55:                                               ; preds = %48
  store i32 -1, i32* %5, align 4
  br label %191

56:                                               ; preds = %48
  %57 = load i32*, i32** %7, align 8
  %58 = icmp ne i32* %57, null
  br i1 %58, label %59, label %62

59:                                               ; preds = %56
  %60 = load i32*, i32** %7, align 8
  %61 = load i32, i32* %60, align 4
  store i32 %61, i32* %17, align 4
  br label %62

62:                                               ; preds = %59, %56
  %63 = load %struct.pf_addr*, %struct.pf_addr** %8, align 8
  %64 = icmp ne %struct.pf_addr* %63, null
  br i1 %64, label %65, label %69

65:                                               ; preds = %62
  %66 = load i32, i32* %17, align 4
  %67 = icmp sge i32 %66, 0
  br i1 %67, label %68, label %69

68:                                               ; preds = %65
  store i32 1, i32* %18, align 4
  br label %69

69:                                               ; preds = %68, %65, %62
  %70 = load i32, i32* %17, align 4
  %71 = icmp slt i32 %70, 0
  br i1 %71, label %72, label %73

72:                                               ; preds = %69
  store i32 0, i32* %17, align 4
  br label %73

73:                                               ; preds = %72, %69
  br label %74

74:                                               ; preds = %187, %107, %73
  %75 = load %struct.pfr_ktable*, %struct.pfr_ktable** %6, align 8
  %76 = load i32, i32* %17, align 4
  %77 = load i32, i32* %9, align 4
  %78 = call %struct.pfr_kentry* @pfr_kentry_byidx(%struct.pfr_ktable* %75, i32 %76, i32 %77)
  store %struct.pfr_kentry* %78, %struct.pfr_kentry** %15, align 8
  %79 = load %struct.pfr_kentry*, %struct.pfr_kentry** %15, align 8
  %80 = icmp eq %struct.pfr_kentry* %79, null
  br i1 %80, label %81, label %86

81:                                               ; preds = %74
  %82 = load %struct.pfr_ktable*, %struct.pfr_ktable** %6, align 8
  %83 = getelementptr inbounds %struct.pfr_ktable, %struct.pfr_ktable* %82, i32 0, i32 4
  %84 = load i32, i32* %83, align 8
  %85 = call i32 @counter_u64_add(i32 %84, i32 1)
  store i32 1, i32* %5, align 4
  br label %191

86:                                               ; preds = %74
  %87 = load i32, i32* %9, align 4
  %88 = load %struct.pfr_kentry*, %struct.pfr_kentry** %15, align 8
  %89 = getelementptr inbounds %struct.pfr_kentry, %struct.pfr_kentry* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 4
  %91 = call i32 @pfr_prepare_network(%union.sockaddr_union* %14, i32 %87, i32 %90)
  %92 = load %struct.pfr_kentry*, %struct.pfr_kentry** %15, align 8
  %93 = getelementptr inbounds %struct.pfr_kentry, %struct.pfr_kentry* %92, i32 0, i32 1
  %94 = load i32, i32* %9, align 4
  %95 = call %struct.pf_addr* @SUNION2PF(%union.sockaddr_union* %93, i32 %94)
  store %struct.pf_addr* %95, %struct.pf_addr** %11, align 8
  %96 = load i32, i32* %9, align 4
  %97 = call %struct.pf_addr* @SUNION2PF(%union.sockaddr_union* %14, i32 %96)
  store %struct.pf_addr* %97, %struct.pf_addr** %12, align 8
  %98 = load i32, i32* %18, align 4
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %100, label %115

100:                                              ; preds = %86
  %101 = load %struct.pf_addr*, %struct.pf_addr** %11, align 8
  %102 = load %struct.pf_addr*, %struct.pf_addr** %12, align 8
  %103 = load %struct.pf_addr*, %struct.pf_addr** %8, align 8
  %104 = load i32, i32* %9, align 4
  %105 = call i32 @PF_MATCHA(i32 0, %struct.pf_addr* %101, %struct.pf_addr* %102, %struct.pf_addr* %103, i32 %104)
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %110, label %107

107:                                              ; preds = %100
  %108 = load i32, i32* %17, align 4
  %109 = add nsw i32 %108, 1
  store i32 %109, i32* %17, align 4
  store i32 0, i32* %18, align 4
  br label %74

110:                                              ; preds = %100
  %111 = load %struct.pf_addr*, %struct.pf_addr** %10, align 8
  %112 = load %struct.pf_addr*, %struct.pf_addr** %8, align 8
  %113 = load i32, i32* %9, align 4
  %114 = call i32 @PF_ACPY(%struct.pf_addr* %111, %struct.pf_addr* %112, i32 %113)
  br label %120

115:                                              ; preds = %86
  %116 = load %struct.pf_addr*, %struct.pf_addr** %10, align 8
  %117 = load %struct.pf_addr*, %struct.pf_addr** %11, align 8
  %118 = load i32, i32* %9, align 4
  %119 = call i32 @PF_ACPY(%struct.pf_addr* %116, %struct.pf_addr* %117, i32 %118)
  br label %120

120:                                              ; preds = %115, %110
  %121 = load %struct.pfr_kentry*, %struct.pfr_kentry** %15, align 8
  %122 = call i32 @KENTRY_NETWORK(%struct.pfr_kentry* %121)
  %123 = icmp ne i32 %122, 0
  br i1 %123, label %135, label %124

124:                                              ; preds = %120
  %125 = load %struct.pf_addr*, %struct.pf_addr** %8, align 8
  %126 = load %struct.pf_addr*, %struct.pf_addr** %10, align 8
  %127 = load i32, i32* %9, align 4
  %128 = call i32 @PF_ACPY(%struct.pf_addr* %125, %struct.pf_addr* %126, i32 %127)
  %129 = load i32, i32* %17, align 4
  %130 = load i32*, i32** %7, align 8
  store i32 %129, i32* %130, align 4
  %131 = load %struct.pfr_ktable*, %struct.pfr_ktable** %6, align 8
  %132 = getelementptr inbounds %struct.pfr_ktable, %struct.pfr_ktable* %131, i32 0, i32 1
  %133 = load i32, i32* %132, align 4
  %134 = call i32 @counter_u64_add(i32 %133, i32 1)
  store i32 0, i32* %5, align 4
  br label %191

135:                                              ; preds = %120
  br label %136

136:                                              ; preds = %190, %135
  %137 = load i32, i32* %9, align 4
  switch i32 %137, label %152 [
    i32 129, label %138
    i32 128, label %145
  ]

138:                                              ; preds = %136
  %139 = load %struct.pfr_ktable*, %struct.pfr_ktable** %6, align 8
  %140 = getelementptr inbounds %struct.pfr_ktable, %struct.pfr_ktable* %139, i32 0, i32 3
  %141 = load %struct.TYPE_7__*, %struct.TYPE_7__** %140, align 8
  %142 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %141, i32 0, i32 0
  %143 = call i64 @rn_match(%union.sockaddr_union* %13, i32* %142)
  %144 = inttoptr i64 %143 to %struct.pfr_kentry*
  store %struct.pfr_kentry* %144, %struct.pfr_kentry** %16, align 8
  br label %152

145:                                              ; preds = %136
  %146 = load %struct.pfr_ktable*, %struct.pfr_ktable** %6, align 8
  %147 = getelementptr inbounds %struct.pfr_ktable, %struct.pfr_ktable* %146, i32 0, i32 2
  %148 = load %struct.TYPE_8__*, %struct.TYPE_8__** %147, align 8
  %149 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %148, i32 0, i32 0
  %150 = call i64 @rn_match(%union.sockaddr_union* %13, i32* %149)
  %151 = inttoptr i64 %150 to %struct.pfr_kentry*
  store %struct.pfr_kentry* %151, %struct.pfr_kentry** %16, align 8
  br label %152

152:                                              ; preds = %136, %145, %138
  %153 = load %struct.pfr_kentry*, %struct.pfr_kentry** %16, align 8
  %154 = load %struct.pfr_kentry*, %struct.pfr_kentry** %15, align 8
  %155 = icmp eq %struct.pfr_kentry* %153, %154
  br i1 %155, label %156, label %167

156:                                              ; preds = %152
  %157 = load %struct.pf_addr*, %struct.pf_addr** %8, align 8
  %158 = load %struct.pf_addr*, %struct.pf_addr** %10, align 8
  %159 = load i32, i32* %9, align 4
  %160 = call i32 @PF_ACPY(%struct.pf_addr* %157, %struct.pf_addr* %158, i32 %159)
  %161 = load i32, i32* %17, align 4
  %162 = load i32*, i32** %7, align 8
  store i32 %161, i32* %162, align 4
  %163 = load %struct.pfr_ktable*, %struct.pfr_ktable** %6, align 8
  %164 = getelementptr inbounds %struct.pfr_ktable, %struct.pfr_ktable* %163, i32 0, i32 1
  %165 = load i32, i32* %164, align 4
  %166 = call i32 @counter_u64_add(i32 %165, i32 1)
  store i32 0, i32* %5, align 4
  br label %191

167:                                              ; preds = %152
  %168 = load %struct.pfr_kentry*, %struct.pfr_kentry** %16, align 8
  %169 = getelementptr inbounds %struct.pfr_kentry, %struct.pfr_kentry* %168, i32 0, i32 0
  %170 = load i32, i32* %169, align 4
  %171 = call i32 @pfr_prepare_network(%union.sockaddr_union* %14, i32 129, i32 %170)
  %172 = load %struct.pf_addr*, %struct.pf_addr** %10, align 8
  %173 = load %struct.pf_addr*, %struct.pf_addr** %10, align 8
  %174 = load i32, i32* %9, align 4
  %175 = call %struct.pf_addr* @SUNION2PF(%union.sockaddr_union* %14, i32 %174)
  %176 = load i32, i32* %9, align 4
  %177 = call i32 @PF_POOLMASK(%struct.pf_addr* %172, %struct.pf_addr* %173, %struct.pf_addr* %175, i32* @pfr_ffaddr, i32 %176)
  %178 = load %struct.pf_addr*, %struct.pf_addr** %10, align 8
  %179 = load i32, i32* %9, align 4
  %180 = call i32 @PF_AINC(%struct.pf_addr* %178, i32 %179)
  %181 = load %struct.pf_addr*, %struct.pf_addr** %11, align 8
  %182 = load %struct.pf_addr*, %struct.pf_addr** %12, align 8
  %183 = load %struct.pf_addr*, %struct.pf_addr** %10, align 8
  %184 = load i32, i32* %9, align 4
  %185 = call i32 @PF_MATCHA(i32 0, %struct.pf_addr* %181, %struct.pf_addr* %182, %struct.pf_addr* %183, i32 %184)
  %186 = icmp ne i32 %185, 0
  br i1 %186, label %190, label %187

187:                                              ; preds = %167
  %188 = load i32, i32* %17, align 4
  %189 = add nsw i32 %188, 1
  store i32 %189, i32* %17, align 4
  store i32 0, i32* %18, align 4
  br label %74

190:                                              ; preds = %167
  br label %136

191:                                              ; preds = %156, %124, %81, %55
  %192 = load i32, i32* %5, align 4
  ret i32 %192
}

declare dso_local %struct.pf_addr* @SUNION2PF(%union.sockaddr_union*, i32) #1

declare dso_local %struct.pfr_kentry* @pfr_kentry_byidx(%struct.pfr_ktable*, i32, i32) #1

declare dso_local i32 @counter_u64_add(i32, i32) #1

declare dso_local i32 @pfr_prepare_network(%union.sockaddr_union*, i32, i32) #1

declare dso_local i32 @PF_MATCHA(i32, %struct.pf_addr*, %struct.pf_addr*, %struct.pf_addr*, i32) #1

declare dso_local i32 @PF_ACPY(%struct.pf_addr*, %struct.pf_addr*, i32) #1

declare dso_local i32 @KENTRY_NETWORK(%struct.pfr_kentry*) #1

declare dso_local i64 @rn_match(%union.sockaddr_union*, i32*) #1

declare dso_local i32 @PF_POOLMASK(%struct.pf_addr*, %struct.pf_addr*, %struct.pf_addr*, i32*, i32) #1

declare dso_local i32 @PF_AINC(%struct.pf_addr*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
