; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/sound/isa/extr_mss.c_ymf_test.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/sound/isa/extr_mss.c_ymf_test.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mss_info = type { i32, i32* }

@ymf_test.ports = internal global [3 x i32] [i32 880, i32 784, i32 1336], align 4
@ymf_test.chipset = internal global [8 x i8*] [i8* null, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i32 0, i32 0)], align 16
@.str = private unnamed_addr constant [18 x i8] c"OPL3-SA2 (YMF711)\00", align 1
@.str.1 = private unnamed_addr constant [18 x i8] c"OPL3-SA3 (YMF715)\00", align 1
@.str.2 = private unnamed_addr constant [18 x i8] c"OPL3-SAx (YMF719)\00", align 1
@SYS_RES_IOPORT = common dso_local global i32 0, align 4
@RF_ACTIVE = common dso_local global i32 0, align 4
@OPL3SAx_DMACONF = common dso_local global i32 0, align 4
@OPL3SAx_MISC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i32, %struct.mss_info*)* @ymf_test to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @ymf_test(i32 %0, %struct.mss_info* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.mss_info*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store %struct.mss_info* %1, %struct.mss_info** %5, align 8
  store i32 0, i32* %6, align 4
  br label %10

10:                                               ; preds = %84, %2
  %11 = load i32, i32* %6, align 4
  %12 = icmp slt i32 %11, 3
  br i1 %12, label %13, label %87

13:                                               ; preds = %10
  %14 = load %struct.mss_info*, %struct.mss_info** %5, align 8
  %15 = getelementptr inbounds %struct.mss_info, %struct.mss_info* %14, i32 0, i32 0
  store i32 1, i32* %15, align 8
  %16 = load i32, i32* %4, align 4
  %17 = load i32, i32* @SYS_RES_IOPORT, align 4
  %18 = load %struct.mss_info*, %struct.mss_info** %5, align 8
  %19 = getelementptr inbounds %struct.mss_info, %struct.mss_info* %18, i32 0, i32 0
  %20 = load i32, i32* %6, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds [3 x i32], [3 x i32]* @ymf_test.ports, i64 0, i64 %21
  %23 = load i32, i32* %22, align 4
  %24 = load i32, i32* %6, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds [3 x i32], [3 x i32]* @ymf_test.ports, i64 0, i64 %25
  %27 = load i32, i32* %26, align 4
  %28 = add nsw i32 %27, 1
  %29 = load i32, i32* @RF_ACTIVE, align 4
  %30 = call i32* @bus_alloc_resource(i32 %16, i32 %17, i32* %19, i32 %23, i32 %28, i32 2, i32 %29)
  %31 = load %struct.mss_info*, %struct.mss_info** %5, align 8
  %32 = getelementptr inbounds %struct.mss_info, %struct.mss_info* %31, i32 0, i32 1
  store i32* %30, i32** %32, align 8
  %33 = load %struct.mss_info*, %struct.mss_info** %5, align 8
  %34 = getelementptr inbounds %struct.mss_info, %struct.mss_info* %33, i32 0, i32 1
  %35 = load i32*, i32** %34, align 8
  %36 = icmp ne i32* %35, null
  br i1 %36, label %38, label %37

37:                                               ; preds = %13
  store i8* null, i8** %3, align 8
  br label %88

38:                                               ; preds = %13
  %39 = load %struct.mss_info*, %struct.mss_info** %5, align 8
  %40 = getelementptr inbounds %struct.mss_info, %struct.mss_info* %39, i32 0, i32 1
  %41 = load i32*, i32** %40, align 8
  %42 = call i32 @port_rd(i32* %41, i32 0)
  store i32 %42, i32* %7, align 4
  %43 = load %struct.mss_info*, %struct.mss_info** %5, align 8
  %44 = getelementptr inbounds %struct.mss_info, %struct.mss_info* %43, i32 0, i32 1
  %45 = load i32*, i32** %44, align 8
  %46 = load i32, i32* @OPL3SAx_DMACONF, align 4
  %47 = call i32 @port_wr(i32* %45, i32 0, i32 %46)
  %48 = load %struct.mss_info*, %struct.mss_info** %5, align 8
  %49 = getelementptr inbounds %struct.mss_info, %struct.mss_info* %48, i32 0, i32 1
  %50 = load i32*, i32** %49, align 8
  %51 = call i32 @port_rd(i32* %50, i32 0)
  %52 = load i32, i32* @OPL3SAx_DMACONF, align 4
  %53 = icmp eq i32 %51, %52
  %54 = zext i1 %53 to i64
  %55 = select i1 %53, i32 1, i32 0
  store i32 %55, i32* %8, align 4
  %56 = load %struct.mss_info*, %struct.mss_info** %5, align 8
  %57 = getelementptr inbounds %struct.mss_info, %struct.mss_info* %56, i32 0, i32 1
  %58 = load i32*, i32** %57, align 8
  %59 = load i32, i32* %7, align 4
  %60 = call i32 @port_wr(i32* %58, i32 0, i32 %59)
  %61 = load i32, i32* %8, align 4
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %75, label %63

63:                                               ; preds = %38
  %64 = load i32, i32* %4, align 4
  %65 = load i32, i32* @SYS_RES_IOPORT, align 4
  %66 = load %struct.mss_info*, %struct.mss_info** %5, align 8
  %67 = getelementptr inbounds %struct.mss_info, %struct.mss_info* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 8
  %69 = load %struct.mss_info*, %struct.mss_info** %5, align 8
  %70 = getelementptr inbounds %struct.mss_info, %struct.mss_info* %69, i32 0, i32 1
  %71 = load i32*, i32** %70, align 8
  %72 = call i32 @bus_release_resource(i32 %64, i32 %65, i32 %68, i32* %71)
  %73 = load %struct.mss_info*, %struct.mss_info** %5, align 8
  %74 = getelementptr inbounds %struct.mss_info, %struct.mss_info* %73, i32 0, i32 1
  store i32* null, i32** %74, align 8
  br label %84

75:                                               ; preds = %38
  %76 = load %struct.mss_info*, %struct.mss_info** %5, align 8
  %77 = load i32, i32* @OPL3SAx_MISC, align 4
  %78 = call i32 @conf_rd(%struct.mss_info* %76, i32 %77)
  %79 = and i32 %78, 7
  store i32 %79, i32* %9, align 4
  %80 = load i32, i32* %9, align 4
  %81 = sext i32 %80 to i64
  %82 = getelementptr inbounds [8 x i8*], [8 x i8*]* @ymf_test.chipset, i64 0, i64 %81
  %83 = load i8*, i8** %82, align 8
  store i8* %83, i8** %3, align 8
  br label %88

84:                                               ; preds = %63
  %85 = load i32, i32* %6, align 4
  %86 = add nsw i32 %85, 1
  store i32 %86, i32* %6, align 4
  br label %10

87:                                               ; preds = %10
  store i8* null, i8** %3, align 8
  br label %88

88:                                               ; preds = %87, %75, %37
  %89 = load i8*, i8** %3, align 8
  ret i8* %89
}

declare dso_local i32* @bus_alloc_resource(i32, i32, i32*, i32, i32, i32, i32) #1

declare dso_local i32 @port_rd(i32*, i32) #1

declare dso_local i32 @port_wr(i32*, i32, i32) #1

declare dso_local i32 @bus_release_resource(i32, i32, i32, i32*) #1

declare dso_local i32 @conf_rd(%struct.mss_info*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
