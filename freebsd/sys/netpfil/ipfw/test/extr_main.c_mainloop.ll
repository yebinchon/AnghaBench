; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netpfil/ipfw/test/extr_main.c_mainloop.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netpfil/ipfw/test/extr_main.c_mainloop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cfg_s = type { i32, i32 (i32, %struct.dn_queue*, %struct.mbuf*)*, i32, i32, i32, %struct.mbuf* (i32)*, i32, i64, i32, %struct.mbuf* }
%struct.dn_queue = type { i32 }
%struct.mbuf = type { i32 }

@.str = private unnamed_addr constant [29 x i8] c"loop %d enq %d send %p rx %d\00", align 1
@.str.1 = private unnamed_addr constant [21 x i8] c"loop %d enqueue fail\00", align 1
@.str.2 = private unnamed_addr constant [11 x i8] c"enqueue ok\00", align 1
@.str.3 = private unnamed_addr constant [53 x i8] c"--- ouch, cannot operate on iteration %d, pending %d\00", align 1
@.str.4 = private unnamed_addr constant [17 x i8] c"mainloop ends %d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cfg_s*)* @mainloop to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mainloop(%struct.cfg_s* %0) #0 {
  %2 = alloca %struct.cfg_s*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.mbuf*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.dn_queue*, align 8
  store %struct.cfg_s* %0, %struct.cfg_s** %2, align 8
  store i32 0, i32* %3, align 4
  br label %7

7:                                                ; preds = %112, %1
  %8 = load i32, i32* %3, align 4
  %9 = load %struct.cfg_s*, %struct.cfg_s** %2, align 8
  %10 = getelementptr inbounds %struct.cfg_s, %struct.cfg_s* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  %12 = icmp slt i32 %8, %11
  br i1 %12, label %13, label %115

13:                                               ; preds = %7
  %14 = load %struct.cfg_s*, %struct.cfg_s** %2, align 8
  %15 = call i32 @controller(%struct.cfg_s* %14)
  %16 = load i32, i32* %3, align 4
  %17 = load %struct.cfg_s*, %struct.cfg_s** %2, align 8
  %18 = getelementptr inbounds %struct.cfg_s, %struct.cfg_s* %17, i32 0, i32 8
  %19 = load i32, i32* %18, align 8
  %20 = load %struct.cfg_s*, %struct.cfg_s** %2, align 8
  %21 = getelementptr inbounds %struct.cfg_s, %struct.cfg_s* %20, i32 0, i32 9
  %22 = load %struct.mbuf*, %struct.mbuf** %21, align 8
  %23 = load %struct.cfg_s*, %struct.cfg_s** %2, align 8
  %24 = getelementptr inbounds %struct.cfg_s, %struct.cfg_s* %23, i32 0, i32 7
  %25 = load i64, i64* %24, align 8
  %26 = call i32 (i32, i8*, i32, ...) @DX(i32 3, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i32 %16, i32 %19, %struct.mbuf* %22, i64 %25)
  %27 = load %struct.cfg_s*, %struct.cfg_s** %2, align 8
  %28 = getelementptr inbounds %struct.cfg_s, %struct.cfg_s* %27, i32 0, i32 9
  %29 = load %struct.mbuf*, %struct.mbuf** %28, align 8
  store %struct.mbuf* %29, %struct.mbuf** %4, align 8
  %30 = icmp ne %struct.mbuf* %29, null
  br i1 %30, label %31, label %68

31:                                               ; preds = %13
  %32 = load %struct.cfg_s*, %struct.cfg_s** %2, align 8
  %33 = load %struct.mbuf*, %struct.mbuf** %4, align 8
  %34 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = call %struct.dn_queue* @FI2Q(%struct.cfg_s* %32, i32 %35)
  store %struct.dn_queue* %36, %struct.dn_queue** %6, align 8
  %37 = load %struct.cfg_s*, %struct.cfg_s** %2, align 8
  %38 = getelementptr inbounds %struct.cfg_s, %struct.cfg_s* %37, i32 0, i32 8
  %39 = load i32, i32* %38, align 8
  %40 = add nsw i32 %39, 1
  store i32 %40, i32* %38, align 8
  %41 = load %struct.cfg_s*, %struct.cfg_s** %2, align 8
  %42 = getelementptr inbounds %struct.cfg_s, %struct.cfg_s* %41, i32 0, i32 1
  %43 = load i32 (i32, %struct.dn_queue*, %struct.mbuf*)*, i32 (i32, %struct.dn_queue*, %struct.mbuf*)** %42, align 8
  %44 = load %struct.cfg_s*, %struct.cfg_s** %2, align 8
  %45 = getelementptr inbounds %struct.cfg_s, %struct.cfg_s* %44, i32 0, i32 4
  %46 = load i32, i32* %45, align 8
  %47 = load %struct.dn_queue*, %struct.dn_queue** %6, align 8
  %48 = load %struct.mbuf*, %struct.mbuf** %4, align 8
  %49 = call i32 %43(i32 %46, %struct.dn_queue* %47, %struct.mbuf* %48)
  store i32 %49, i32* %5, align 4
  %50 = load i32, i32* %5, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %58

52:                                               ; preds = %31
  %53 = load %struct.cfg_s*, %struct.cfg_s** %2, align 8
  %54 = load %struct.mbuf*, %struct.mbuf** %4, align 8
  %55 = call i32 @drop(%struct.cfg_s* %53, %struct.mbuf* %54)
  %56 = load i32, i32* %3, align 4
  %57 = call i32 (i8*, i32, ...) @D(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0), i32 %56)
  br label %74

58:                                               ; preds = %31
  %59 = call i32 @ND(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0))
  %60 = load %struct.cfg_s*, %struct.cfg_s** %2, align 8
  %61 = getelementptr inbounds %struct.cfg_s, %struct.cfg_s* %60, i32 0, i32 2
  %62 = load i32, i32* %61, align 8
  %63 = add nsw i32 %62, 1
  store i32 %63, i32* %61, align 8
  %64 = load %struct.cfg_s*, %struct.cfg_s** %2, align 8
  %65 = load %struct.mbuf*, %struct.mbuf** %4, align 8
  %66 = call i32 @gnet_stats_enq(%struct.cfg_s* %64, %struct.mbuf* %65)
  br label %67

67:                                               ; preds = %58
  br label %111

68:                                               ; preds = %13
  %69 = load %struct.cfg_s*, %struct.cfg_s** %2, align 8
  %70 = getelementptr inbounds %struct.cfg_s, %struct.cfg_s* %69, i32 0, i32 7
  %71 = load i64, i64* %70, align 8
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %73, label %110

73:                                               ; preds = %68
  br label %74

74:                                               ; preds = %73, %52
  %75 = load %struct.cfg_s*, %struct.cfg_s** %2, align 8
  %76 = getelementptr inbounds %struct.cfg_s, %struct.cfg_s* %75, i32 0, i32 6
  %77 = load i32, i32* %76, align 8
  %78 = add nsw i32 %77, 1
  store i32 %78, i32* %76, align 8
  %79 = load %struct.cfg_s*, %struct.cfg_s** %2, align 8
  %80 = getelementptr inbounds %struct.cfg_s, %struct.cfg_s* %79, i32 0, i32 5
  %81 = load %struct.mbuf* (i32)*, %struct.mbuf* (i32)** %80, align 8
  %82 = load %struct.cfg_s*, %struct.cfg_s** %2, align 8
  %83 = getelementptr inbounds %struct.cfg_s, %struct.cfg_s* %82, i32 0, i32 4
  %84 = load i32, i32* %83, align 8
  %85 = call %struct.mbuf* %81(i32 %84)
  store %struct.mbuf* %85, %struct.mbuf** %4, align 8
  %86 = load %struct.mbuf*, %struct.mbuf** %4, align 8
  %87 = icmp ne %struct.mbuf* %86, null
  br i1 %87, label %88, label %103

88:                                               ; preds = %74
  %89 = load %struct.cfg_s*, %struct.cfg_s** %2, align 8
  %90 = getelementptr inbounds %struct.cfg_s, %struct.cfg_s* %89, i32 0, i32 2
  %91 = load i32, i32* %90, align 8
  %92 = add nsw i32 %91, -1
  store i32 %92, i32* %90, align 8
  %93 = load %struct.cfg_s*, %struct.cfg_s** %2, align 8
  %94 = load %struct.mbuf*, %struct.mbuf** %4, align 8
  %95 = call i32 @drop(%struct.cfg_s* %93, %struct.mbuf* %94)
  %96 = load %struct.cfg_s*, %struct.cfg_s** %2, align 8
  %97 = getelementptr inbounds %struct.cfg_s, %struct.cfg_s* %96, i32 0, i32 3
  %98 = load i32, i32* %97, align 4
  %99 = add nsw i32 %98, -1
  store i32 %99, i32* %97, align 4
  %100 = load %struct.cfg_s*, %struct.cfg_s** %2, align 8
  %101 = load %struct.mbuf*, %struct.mbuf** %4, align 8
  %102 = call i32 @gnet_stats_deq(%struct.cfg_s* %100, %struct.mbuf* %101)
  br label %109

103:                                              ; preds = %74
  %104 = load i32, i32* %3, align 4
  %105 = load %struct.cfg_s*, %struct.cfg_s** %2, align 8
  %106 = getelementptr inbounds %struct.cfg_s, %struct.cfg_s* %105, i32 0, i32 2
  %107 = load i32, i32* %106, align 8
  %108 = call i32 (i8*, i32, ...) @D(i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.3, i64 0, i64 0), i32 %104, i32 %107)
  br label %115

109:                                              ; preds = %88
  br label %110

110:                                              ; preds = %109, %68
  br label %111

111:                                              ; preds = %110, %67
  br label %112

112:                                              ; preds = %111
  %113 = load i32, i32* %3, align 4
  %114 = add nsw i32 %113, 1
  store i32 %114, i32* %3, align 4
  br label %7

115:                                              ; preds = %103, %7
  %116 = load i32, i32* %3, align 4
  %117 = call i32 (i32, i8*, i32, ...) @DX(i32 1, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.4, i64 0, i64 0), i32 %116)
  ret i32 0
}

declare dso_local i32 @controller(%struct.cfg_s*) #1

declare dso_local i32 @DX(i32, i8*, i32, ...) #1

declare dso_local %struct.dn_queue* @FI2Q(%struct.cfg_s*, i32) #1

declare dso_local i32 @drop(%struct.cfg_s*, %struct.mbuf*) #1

declare dso_local i32 @D(i8*, i32, ...) #1

declare dso_local i32 @ND(i8*) #1

declare dso_local i32 @gnet_stats_enq(%struct.cfg_s*, %struct.mbuf*) #1

declare dso_local i32 @gnet_stats_deq(%struct.cfg_s*, %struct.mbuf*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
