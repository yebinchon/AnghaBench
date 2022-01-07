; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netpfil/ipfw/extr_ip_fw_nat.c_nat44_config.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netpfil/ipfw/extr_ip_fw_nat.c_nat44_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ip_fw_chain = type { i32, i32 }
%struct.nat44_cfg_nat = type { i32, i32, i32, i32, i32 }
%struct.cfg_nat = type { i32, i32, i32, i32, i32, i32, i32 }

@M_IPFW = common dso_local global i32 0, align 4
@M_WAITOK = common dso_local global i32 0, align 4
@M_ZERO = common dso_local global i32 0, align 4
@_next = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ip_fw_chain*, %struct.nat44_cfg_nat*)* @nat44_config to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nat44_config(%struct.ip_fw_chain* %0, %struct.nat44_cfg_nat* %1) #0 {
  %3 = alloca %struct.ip_fw_chain*, align 8
  %4 = alloca %struct.nat44_cfg_nat*, align 8
  %5 = alloca %struct.cfg_nat*, align 8
  %6 = alloca %struct.cfg_nat*, align 8
  %7 = alloca i32, align 4
  store %struct.ip_fw_chain* %0, %struct.ip_fw_chain** %3, align 8
  store %struct.nat44_cfg_nat* %1, %struct.nat44_cfg_nat** %4, align 8
  %8 = load %struct.ip_fw_chain*, %struct.ip_fw_chain** %3, align 8
  %9 = call i32 @IPFW_UH_WLOCK(%struct.ip_fw_chain* %8)
  %10 = load %struct.ip_fw_chain*, %struct.ip_fw_chain** %3, align 8
  %11 = getelementptr inbounds %struct.ip_fw_chain, %struct.ip_fw_chain* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  store i32 %12, i32* %7, align 4
  %13 = load %struct.ip_fw_chain*, %struct.ip_fw_chain** %3, align 8
  %14 = getelementptr inbounds %struct.ip_fw_chain, %struct.ip_fw_chain* %13, i32 0, i32 1
  %15 = load %struct.nat44_cfg_nat*, %struct.nat44_cfg_nat** %4, align 8
  %16 = getelementptr inbounds %struct.nat44_cfg_nat, %struct.nat44_cfg_nat* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = call %struct.cfg_nat* @lookup_nat_name(i32* %14, i32 %17)
  store %struct.cfg_nat* %18, %struct.cfg_nat** %5, align 8
  %19 = load %struct.cfg_nat*, %struct.cfg_nat** %5, align 8
  %20 = icmp eq %struct.cfg_nat* %19, null
  br i1 %20, label %21, label %35

21:                                               ; preds = %2
  %22 = load %struct.ip_fw_chain*, %struct.ip_fw_chain** %3, align 8
  %23 = call i32 @IPFW_UH_WUNLOCK(%struct.ip_fw_chain* %22)
  %24 = load i32, i32* @M_IPFW, align 4
  %25 = load i32, i32* @M_WAITOK, align 4
  %26 = load i32, i32* @M_ZERO, align 4
  %27 = or i32 %25, %26
  %28 = call %struct.cfg_nat* @malloc(i32 28, i32 %24, i32 %27)
  store %struct.cfg_nat* %28, %struct.cfg_nat** %5, align 8
  %29 = call i32 @LibAliasInit(i32* null)
  %30 = load %struct.cfg_nat*, %struct.cfg_nat** %5, align 8
  %31 = getelementptr inbounds %struct.cfg_nat, %struct.cfg_nat* %30, i32 0, i32 2
  store i32 %29, i32* %31, align 4
  %32 = load %struct.cfg_nat*, %struct.cfg_nat** %5, align 8
  %33 = getelementptr inbounds %struct.cfg_nat, %struct.cfg_nat* %32, i32 0, i32 0
  %34 = call i32 @LIST_INIT(i32* %33)
  br label %50

35:                                               ; preds = %2
  %36 = load %struct.ip_fw_chain*, %struct.ip_fw_chain** %3, align 8
  %37 = call i32 @IPFW_WLOCK(%struct.ip_fw_chain* %36)
  %38 = load %struct.cfg_nat*, %struct.cfg_nat** %5, align 8
  %39 = load i32, i32* @_next, align 4
  %40 = call i32 @LIST_REMOVE(%struct.cfg_nat* %38, i32 %39)
  %41 = load %struct.ip_fw_chain*, %struct.ip_fw_chain** %3, align 8
  %42 = load %struct.cfg_nat*, %struct.cfg_nat** %5, align 8
  %43 = getelementptr inbounds %struct.cfg_nat, %struct.cfg_nat* %42, i32 0, i32 6
  %44 = load i32, i32* %43, align 4
  %45 = call i32 @flush_nat_ptrs(%struct.ip_fw_chain* %41, i32 %44)
  %46 = load %struct.ip_fw_chain*, %struct.ip_fw_chain** %3, align 8
  %47 = call i32 @IPFW_WUNLOCK(%struct.ip_fw_chain* %46)
  %48 = load %struct.ip_fw_chain*, %struct.ip_fw_chain** %3, align 8
  %49 = call i32 @IPFW_UH_WUNLOCK(%struct.ip_fw_chain* %48)
  br label %50

50:                                               ; preds = %35, %21
  %51 = load %struct.nat44_cfg_nat*, %struct.nat44_cfg_nat** %4, align 8
  %52 = getelementptr inbounds %struct.nat44_cfg_nat, %struct.nat44_cfg_nat* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = call i32 @strtol(i32 %53, i32* null, i32 10)
  %55 = load %struct.cfg_nat*, %struct.cfg_nat** %5, align 8
  %56 = getelementptr inbounds %struct.cfg_nat, %struct.cfg_nat* %55, i32 0, i32 6
  store i32 %54, i32* %56, align 4
  %57 = load %struct.nat44_cfg_nat*, %struct.nat44_cfg_nat** %4, align 8
  %58 = getelementptr inbounds %struct.nat44_cfg_nat, %struct.nat44_cfg_nat* %57, i32 0, i32 4
  %59 = load i32, i32* %58, align 4
  %60 = load %struct.cfg_nat*, %struct.cfg_nat** %5, align 8
  %61 = getelementptr inbounds %struct.cfg_nat, %struct.cfg_nat* %60, i32 0, i32 1
  store i32 %59, i32* %61, align 4
  %62 = load %struct.nat44_cfg_nat*, %struct.nat44_cfg_nat** %4, align 8
  %63 = getelementptr inbounds %struct.nat44_cfg_nat, %struct.nat44_cfg_nat* %62, i32 0, i32 3
  %64 = load i32, i32* %63, align 4
  %65 = load %struct.cfg_nat*, %struct.cfg_nat** %5, align 8
  %66 = getelementptr inbounds %struct.cfg_nat, %struct.cfg_nat* %65, i32 0, i32 5
  store i32 %64, i32* %66, align 4
  %67 = load %struct.nat44_cfg_nat*, %struct.nat44_cfg_nat** %4, align 8
  %68 = getelementptr inbounds %struct.nat44_cfg_nat, %struct.nat44_cfg_nat* %67, i32 0, i32 2
  %69 = load i32, i32* %68, align 4
  %70 = load %struct.cfg_nat*, %struct.cfg_nat** %5, align 8
  %71 = getelementptr inbounds %struct.cfg_nat, %struct.cfg_nat* %70, i32 0, i32 3
  store i32 %69, i32* %71, align 4
  %72 = load %struct.cfg_nat*, %struct.cfg_nat** %5, align 8
  %73 = getelementptr inbounds %struct.cfg_nat, %struct.cfg_nat* %72, i32 0, i32 4
  %74 = load i32, i32* %73, align 4
  %75 = load %struct.nat44_cfg_nat*, %struct.nat44_cfg_nat** %4, align 8
  %76 = getelementptr inbounds %struct.nat44_cfg_nat, %struct.nat44_cfg_nat* %75, i32 0, i32 1
  %77 = load i32, i32* %76, align 4
  %78 = call i32 @strlcpy(i32 %74, i32 %77, i32 4)
  %79 = load %struct.cfg_nat*, %struct.cfg_nat** %5, align 8
  %80 = getelementptr inbounds %struct.cfg_nat, %struct.cfg_nat* %79, i32 0, i32 2
  %81 = load i32, i32* %80, align 4
  %82 = load %struct.cfg_nat*, %struct.cfg_nat** %5, align 8
  %83 = getelementptr inbounds %struct.cfg_nat, %struct.cfg_nat* %82, i32 0, i32 3
  %84 = load i32, i32* %83, align 4
  %85 = call i32 @LibAliasSetMode(i32 %81, i32 %84, i32 -1)
  %86 = load %struct.cfg_nat*, %struct.cfg_nat** %5, align 8
  %87 = getelementptr inbounds %struct.cfg_nat, %struct.cfg_nat* %86, i32 0, i32 2
  %88 = load i32, i32* %87, align 4
  %89 = load %struct.cfg_nat*, %struct.cfg_nat** %5, align 8
  %90 = getelementptr inbounds %struct.cfg_nat, %struct.cfg_nat* %89, i32 0, i32 1
  %91 = load i32, i32* %90, align 4
  %92 = call i32 @LibAliasSetAddress(i32 %88, i32 %91)
  %93 = load %struct.cfg_nat*, %struct.cfg_nat** %5, align 8
  %94 = load %struct.cfg_nat*, %struct.cfg_nat** %5, align 8
  %95 = getelementptr inbounds %struct.cfg_nat, %struct.cfg_nat* %94, i32 0, i32 0
  %96 = call i32 @del_redir_spool_cfg(%struct.cfg_nat* %93, i32* %95)
  %97 = load %struct.nat44_cfg_nat*, %struct.nat44_cfg_nat** %4, align 8
  %98 = getelementptr inbounds %struct.nat44_cfg_nat, %struct.nat44_cfg_nat* %97, i64 1
  %99 = bitcast %struct.nat44_cfg_nat* %98 to i8*
  %100 = load %struct.cfg_nat*, %struct.cfg_nat** %5, align 8
  %101 = call i32 @add_redir_spool_cfg(i8* %99, %struct.cfg_nat* %100)
  %102 = load %struct.ip_fw_chain*, %struct.ip_fw_chain** %3, align 8
  %103 = call i32 @IPFW_UH_WLOCK(%struct.ip_fw_chain* %102)
  store %struct.cfg_nat* null, %struct.cfg_nat** %6, align 8
  %104 = load i32, i32* %7, align 4
  %105 = load %struct.ip_fw_chain*, %struct.ip_fw_chain** %3, align 8
  %106 = getelementptr inbounds %struct.ip_fw_chain, %struct.ip_fw_chain* %105, i32 0, i32 0
  %107 = load i32, i32* %106, align 4
  %108 = icmp ne i32 %104, %107
  br i1 %108, label %109, label %116

109:                                              ; preds = %50
  %110 = load %struct.ip_fw_chain*, %struct.ip_fw_chain** %3, align 8
  %111 = getelementptr inbounds %struct.ip_fw_chain, %struct.ip_fw_chain* %110, i32 0, i32 1
  %112 = load %struct.nat44_cfg_nat*, %struct.nat44_cfg_nat** %4, align 8
  %113 = getelementptr inbounds %struct.nat44_cfg_nat, %struct.nat44_cfg_nat* %112, i32 0, i32 0
  %114 = load i32, i32* %113, align 4
  %115 = call %struct.cfg_nat* @lookup_nat_name(i32* %111, i32 %114)
  store %struct.cfg_nat* %115, %struct.cfg_nat** %6, align 8
  br label %116

116:                                              ; preds = %109, %50
  %117 = load %struct.ip_fw_chain*, %struct.ip_fw_chain** %3, align 8
  %118 = call i32 @IPFW_WLOCK(%struct.ip_fw_chain* %117)
  %119 = load %struct.cfg_nat*, %struct.cfg_nat** %6, align 8
  %120 = icmp ne %struct.cfg_nat* %119, null
  br i1 %120, label %121, label %125

121:                                              ; preds = %116
  %122 = load %struct.cfg_nat*, %struct.cfg_nat** %6, align 8
  %123 = load i32, i32* @_next, align 4
  %124 = call i32 @LIST_REMOVE(%struct.cfg_nat* %122, i32 %123)
  br label %125

125:                                              ; preds = %121, %116
  %126 = load %struct.ip_fw_chain*, %struct.ip_fw_chain** %3, align 8
  %127 = getelementptr inbounds %struct.ip_fw_chain, %struct.ip_fw_chain* %126, i32 0, i32 1
  %128 = load %struct.cfg_nat*, %struct.cfg_nat** %5, align 8
  %129 = load i32, i32* @_next, align 4
  %130 = call i32 @LIST_INSERT_HEAD(i32* %127, %struct.cfg_nat* %128, i32 %129)
  %131 = load %struct.ip_fw_chain*, %struct.ip_fw_chain** %3, align 8
  %132 = call i32 @IPFW_WUNLOCK(%struct.ip_fw_chain* %131)
  %133 = load %struct.ip_fw_chain*, %struct.ip_fw_chain** %3, align 8
  %134 = getelementptr inbounds %struct.ip_fw_chain, %struct.ip_fw_chain* %133, i32 0, i32 0
  %135 = load i32, i32* %134, align 4
  %136 = add nsw i32 %135, 1
  store i32 %136, i32* %134, align 4
  %137 = load %struct.ip_fw_chain*, %struct.ip_fw_chain** %3, align 8
  %138 = call i32 @IPFW_UH_WUNLOCK(%struct.ip_fw_chain* %137)
  %139 = load %struct.cfg_nat*, %struct.cfg_nat** %6, align 8
  %140 = icmp ne %struct.cfg_nat* %139, null
  br i1 %140, label %141, label %144

141:                                              ; preds = %125
  %142 = load %struct.cfg_nat*, %struct.cfg_nat** %5, align 8
  %143 = call i32 @free_nat_instance(%struct.cfg_nat* %142)
  br label %144

144:                                              ; preds = %141, %125
  ret void
}

declare dso_local i32 @IPFW_UH_WLOCK(%struct.ip_fw_chain*) #1

declare dso_local %struct.cfg_nat* @lookup_nat_name(i32*, i32) #1

declare dso_local i32 @IPFW_UH_WUNLOCK(%struct.ip_fw_chain*) #1

declare dso_local %struct.cfg_nat* @malloc(i32, i32, i32) #1

declare dso_local i32 @LibAliasInit(i32*) #1

declare dso_local i32 @LIST_INIT(i32*) #1

declare dso_local i32 @IPFW_WLOCK(%struct.ip_fw_chain*) #1

declare dso_local i32 @LIST_REMOVE(%struct.cfg_nat*, i32) #1

declare dso_local i32 @flush_nat_ptrs(%struct.ip_fw_chain*, i32) #1

declare dso_local i32 @IPFW_WUNLOCK(%struct.ip_fw_chain*) #1

declare dso_local i32 @strtol(i32, i32*, i32) #1

declare dso_local i32 @strlcpy(i32, i32, i32) #1

declare dso_local i32 @LibAliasSetMode(i32, i32, i32) #1

declare dso_local i32 @LibAliasSetAddress(i32, i32) #1

declare dso_local i32 @del_redir_spool_cfg(%struct.cfg_nat*, i32*) #1

declare dso_local i32 @add_redir_spool_cfg(i8*, %struct.cfg_nat*) #1

declare dso_local i32 @LIST_INSERT_HEAD(i32*, %struct.cfg_nat*, i32) #1

declare dso_local i32 @free_nat_instance(%struct.cfg_nat*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
