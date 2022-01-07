; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netpfil/ipfw/extr_ip_fw_sockopt.c_update_skipto_cache.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netpfil/ipfw/extr_ip_fw_sockopt.c_update_skipto_cache.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ip_fw_chain = type { i32* }
%struct.ip_fw = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ip_fw_chain*, %struct.ip_fw**)* @update_skipto_cache to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @update_skipto_cache(%struct.ip_fw_chain* %0, %struct.ip_fw** %1) #0 {
  %3 = alloca %struct.ip_fw_chain*, align 8
  %4 = alloca %struct.ip_fw**, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.ip_fw_chain* %0, %struct.ip_fw_chain** %3, align 8
  store %struct.ip_fw** %1, %struct.ip_fw*** %4, align 8
  %9 = load %struct.ip_fw_chain*, %struct.ip_fw_chain** %3, align 8
  %10 = call i32 @IPFW_UH_WLOCK_ASSERT(%struct.ip_fw_chain* %9)
  store i32 0, i32* %8, align 4
  %11 = load %struct.ip_fw**, %struct.ip_fw*** %4, align 8
  %12 = load i32, i32* %8, align 4
  %13 = sext i32 %12 to i64
  %14 = getelementptr inbounds %struct.ip_fw*, %struct.ip_fw** %11, i64 %13
  %15 = load %struct.ip_fw*, %struct.ip_fw** %14, align 8
  %16 = getelementptr inbounds %struct.ip_fw, %struct.ip_fw* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  store i32 %17, i32* %6, align 4
  %18 = load %struct.ip_fw_chain*, %struct.ip_fw_chain** %3, align 8
  %19 = getelementptr inbounds %struct.ip_fw_chain, %struct.ip_fw_chain* %18, i32 0, i32 0
  %20 = load i32*, i32** %19, align 8
  store i32* %20, i32** %5, align 8
  %21 = load i32*, i32** %5, align 8
  %22 = icmp eq i32* %21, null
  br i1 %22, label %23, label %24

23:                                               ; preds = %2
  br label %67

24:                                               ; preds = %2
  store i32 0, i32* %7, align 4
  br label %25

25:                                               ; preds = %64, %24
  %26 = load i32, i32* %7, align 4
  %27 = icmp slt i32 %26, 65536
  br i1 %27, label %28, label %67

28:                                               ; preds = %25
  %29 = load i32, i32* %8, align 4
  %30 = load i32*, i32** %5, align 8
  %31 = load i32, i32* %7, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds i32, i32* %30, i64 %32
  store i32 %29, i32* %33, align 4
  %34 = load i32, i32* %7, align 4
  %35 = load i32, i32* %6, align 4
  %36 = icmp ne i32 %34, %35
  br i1 %36, label %40, label %37

37:                                               ; preds = %28
  %38 = load i32, i32* %7, align 4
  %39 = icmp eq i32 %38, 65535
  br i1 %39, label %40, label %41

40:                                               ; preds = %37, %28
  br label %64

41:                                               ; preds = %37
  %42 = load %struct.ip_fw**, %struct.ip_fw*** %4, align 8
  %43 = load i32, i32* %8, align 4
  %44 = add nsw i32 %43, 1
  store i32 %44, i32* %8, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds %struct.ip_fw*, %struct.ip_fw** %42, i64 %45
  %47 = load %struct.ip_fw*, %struct.ip_fw** %46, align 8
  %48 = getelementptr inbounds %struct.ip_fw, %struct.ip_fw* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  store i32 %49, i32* %6, align 4
  br label %50

50:                                               ; preds = %54, %41
  %51 = load i32, i32* %6, align 4
  %52 = load i32, i32* %7, align 4
  %53 = icmp eq i32 %51, %52
  br i1 %53, label %54, label %63

54:                                               ; preds = %50
  %55 = load %struct.ip_fw**, %struct.ip_fw*** %4, align 8
  %56 = load i32, i32* %8, align 4
  %57 = add nsw i32 %56, 1
  store i32 %57, i32* %8, align 4
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds %struct.ip_fw*, %struct.ip_fw** %55, i64 %58
  %60 = load %struct.ip_fw*, %struct.ip_fw** %59, align 8
  %61 = getelementptr inbounds %struct.ip_fw, %struct.ip_fw* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  store i32 %62, i32* %6, align 4
  br label %50

63:                                               ; preds = %50
  br label %64

64:                                               ; preds = %63, %40
  %65 = load i32, i32* %7, align 4
  %66 = add nsw i32 %65, 1
  store i32 %66, i32* %7, align 4
  br label %25

67:                                               ; preds = %23, %25
  ret void
}

declare dso_local i32 @IPFW_UH_WLOCK_ASSERT(%struct.ip_fw_chain*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
