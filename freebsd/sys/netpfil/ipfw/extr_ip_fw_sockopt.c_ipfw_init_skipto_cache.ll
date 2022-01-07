; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netpfil/ipfw/extr_ip_fw_sockopt.c_ipfw_init_skipto_cache.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netpfil/ipfw/extr_ip_fw_sockopt.c_ipfw_init_skipto_cache.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ip_fw_chain = type { i32*, i32*, i32 }

@M_IPFW = common dso_local global i32 0, align 4
@M_WAITOK = common dso_local global i32 0, align 4
@M_ZERO = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ipfw_init_skipto_cache(%struct.ip_fw_chain* %0) #0 {
  %2 = alloca %struct.ip_fw_chain*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  store %struct.ip_fw_chain* %0, %struct.ip_fw_chain** %2, align 8
  %5 = load i32, i32* @M_IPFW, align 4
  %6 = load i32, i32* @M_WAITOK, align 4
  %7 = load i32, i32* @M_ZERO, align 4
  %8 = or i32 %6, %7
  %9 = call i32* @malloc(i32 262144, i32 %5, i32 %8)
  store i32* %9, i32** %3, align 8
  %10 = load i32, i32* @M_IPFW, align 4
  %11 = load i32, i32* @M_WAITOK, align 4
  %12 = call i32* @malloc(i32 262144, i32 %10, i32 %11)
  store i32* %12, i32** %4, align 8
  %13 = load %struct.ip_fw_chain*, %struct.ip_fw_chain** %2, align 8
  %14 = call i32 @IPFW_UH_WLOCK(%struct.ip_fw_chain* %13)
  %15 = load %struct.ip_fw_chain*, %struct.ip_fw_chain** %2, align 8
  %16 = getelementptr inbounds %struct.ip_fw_chain, %struct.ip_fw_chain* %15, i32 0, i32 0
  %17 = load i32*, i32** %16, align 8
  %18 = icmp ne i32* %17, null
  br i1 %18, label %19, label %28

19:                                               ; preds = %1
  %20 = load %struct.ip_fw_chain*, %struct.ip_fw_chain** %2, align 8
  %21 = call i32 @IPFW_UH_WUNLOCK(%struct.ip_fw_chain* %20)
  %22 = load i32*, i32** %3, align 8
  %23 = load i32, i32* @M_IPFW, align 4
  %24 = call i32 @free(i32* %22, i32 %23)
  %25 = load i32*, i32** %4, align 8
  %26 = load i32, i32* @M_IPFW, align 4
  %27 = call i32 @free(i32* %25, i32 %26)
  br label %48

28:                                               ; preds = %1
  %29 = load i32*, i32** %4, align 8
  %30 = load %struct.ip_fw_chain*, %struct.ip_fw_chain** %2, align 8
  %31 = getelementptr inbounds %struct.ip_fw_chain, %struct.ip_fw_chain* %30, i32 0, i32 1
  store i32* %29, i32** %31, align 8
  %32 = load %struct.ip_fw_chain*, %struct.ip_fw_chain** %2, align 8
  %33 = load %struct.ip_fw_chain*, %struct.ip_fw_chain** %2, align 8
  %34 = getelementptr inbounds %struct.ip_fw_chain, %struct.ip_fw_chain* %33, i32 0, i32 2
  %35 = load i32, i32* %34, align 8
  %36 = call i32 @update_skipto_cache(%struct.ip_fw_chain* %32, i32 %35)
  %37 = load %struct.ip_fw_chain*, %struct.ip_fw_chain** %2, align 8
  %38 = call i32 @IPFW_WLOCK(%struct.ip_fw_chain* %37)
  %39 = load i32*, i32** %3, align 8
  %40 = load %struct.ip_fw_chain*, %struct.ip_fw_chain** %2, align 8
  %41 = getelementptr inbounds %struct.ip_fw_chain, %struct.ip_fw_chain* %40, i32 0, i32 0
  store i32* %39, i32** %41, align 8
  %42 = load %struct.ip_fw_chain*, %struct.ip_fw_chain** %2, align 8
  %43 = call i32 @swap_skipto_cache(%struct.ip_fw_chain* %42)
  %44 = load %struct.ip_fw_chain*, %struct.ip_fw_chain** %2, align 8
  %45 = call i32 @IPFW_WUNLOCK(%struct.ip_fw_chain* %44)
  %46 = load %struct.ip_fw_chain*, %struct.ip_fw_chain** %2, align 8
  %47 = call i32 @IPFW_UH_WUNLOCK(%struct.ip_fw_chain* %46)
  br label %48

48:                                               ; preds = %28, %19
  ret void
}

declare dso_local i32* @malloc(i32, i32, i32) #1

declare dso_local i32 @IPFW_UH_WLOCK(%struct.ip_fw_chain*) #1

declare dso_local i32 @IPFW_UH_WUNLOCK(%struct.ip_fw_chain*) #1

declare dso_local i32 @free(i32*, i32) #1

declare dso_local i32 @update_skipto_cache(%struct.ip_fw_chain*, i32) #1

declare dso_local i32 @IPFW_WLOCK(%struct.ip_fw_chain*) #1

declare dso_local i32 @swap_skipto_cache(%struct.ip_fw_chain*) #1

declare dso_local i32 @IPFW_WUNLOCK(%struct.ip_fw_chain*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
