; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/bsnmpd/modules/snmp_pf/extr_pf_snmp.c_pfi_refresh.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/bsnmpd/modules/snmp_pf/extr_pf_snmp.c_pfi_refresh.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pfioc_iface = type { i32, i32, %struct.pfi_kif* }
%struct.pfi_kif = type { i32, i32 }
%struct.pfi_entry = type { i32, i32 }

@started = common dso_local global i64 0, align 8
@this_tick = common dso_local global i64 0, align 8
@pf_tick = common dso_local global i64 0, align 8
@pfi_table = common dso_local global i32 0, align 4
@link = common dso_local global i32 0, align 4
@LOG_ERR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [40 x i8] c"pfi_refresh(): reallocf() numifs=%d: %s\00", align 1
@errno = common dso_local global i32 0, align 4
@dev = common dso_local global i32 0, align 4
@DIOCIGETIFACES = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [27 x i8] c"pfi_refresh(): ioctl(): %s\00", align 1
@pfi_table_age = common dso_local global i32 0, align 4
@pfi_table_count = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @pfi_refresh to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pfi_refresh() #0 {
  %1 = alloca i32, align 4
  %2 = alloca %struct.pfioc_iface, align 8
  %3 = alloca %struct.pfi_kif*, align 8
  %4 = alloca %struct.pfi_entry*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.pfi_kif* null, %struct.pfi_kif** %3, align 8
  store i32 1, i32* %6, align 4
  %7 = load i64, i64* @started, align 8
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %14

9:                                                ; preds = %0
  %10 = load i64, i64* @this_tick, align 8
  %11 = load i64, i64* @pf_tick, align 8
  %12 = icmp sle i64 %10, %11
  br i1 %12, label %13, label %14

13:                                               ; preds = %9
  store i32 0, i32* %1, align 4
  br label %125

14:                                               ; preds = %9, %0
  br label %15

15:                                               ; preds = %19, %14
  %16 = call i32 @TAILQ_EMPTY(i32* @pfi_table)
  %17 = icmp ne i32 %16, 0
  %18 = xor i1 %17, true
  br i1 %18, label %19, label %29

19:                                               ; preds = %15
  %20 = call %struct.pfi_kif* @TAILQ_FIRST(i32* @pfi_table)
  %21 = bitcast %struct.pfi_kif* %20 to %struct.pfi_entry*
  store %struct.pfi_entry* %21, %struct.pfi_entry** %4, align 8
  %22 = load %struct.pfi_entry*, %struct.pfi_entry** %4, align 8
  %23 = bitcast %struct.pfi_entry* %22 to %struct.pfi_kif*
  %24 = load i32, i32* @link, align 4
  %25 = call i32 @TAILQ_REMOVE(i32* @pfi_table, %struct.pfi_kif* %23, i32 %24)
  %26 = load %struct.pfi_entry*, %struct.pfi_entry** %4, align 8
  %27 = bitcast %struct.pfi_entry* %26 to %struct.pfi_kif*
  %28 = call i32 @free(%struct.pfi_kif* %27)
  br label %15

29:                                               ; preds = %15
  %30 = call i32 @bzero(%struct.pfioc_iface* %2, i32 16)
  %31 = getelementptr inbounds %struct.pfioc_iface, %struct.pfioc_iface* %2, i32 0, i32 0
  store i32 8, i32* %31, align 8
  br label %32

32:                                               ; preds = %67, %29
  %33 = load %struct.pfi_kif*, %struct.pfi_kif** %3, align 8
  %34 = load i32, i32* %6, align 4
  %35 = sext i32 %34 to i64
  %36 = mul i64 %35, 8
  %37 = trunc i64 %36 to i32
  %38 = call %struct.pfi_kif* @reallocf(%struct.pfi_kif* %33, i32 %37)
  store %struct.pfi_kif* %38, %struct.pfi_kif** %3, align 8
  %39 = load %struct.pfi_kif*, %struct.pfi_kif** %3, align 8
  %40 = icmp eq %struct.pfi_kif* %39, null
  br i1 %40, label %41, label %47

41:                                               ; preds = %32
  %42 = load i32, i32* @LOG_ERR, align 4
  %43 = load i32, i32* %6, align 4
  %44 = load i32, i32* @errno, align 4
  %45 = call i32 @strerror(i32 %44)
  %46 = call i32 (i32, i8*, i32, ...) @syslog(i32 %42, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0), i32 %43, i32 %45)
  br label %122

47:                                               ; preds = %32
  %48 = load i32, i32* %6, align 4
  %49 = getelementptr inbounds %struct.pfioc_iface, %struct.pfioc_iface* %2, i32 0, i32 1
  store i32 %48, i32* %49, align 4
  %50 = load %struct.pfi_kif*, %struct.pfi_kif** %3, align 8
  %51 = getelementptr inbounds %struct.pfioc_iface, %struct.pfioc_iface* %2, i32 0, i32 2
  store %struct.pfi_kif* %50, %struct.pfi_kif** %51, align 8
  %52 = load i32, i32* @dev, align 4
  %53 = load i32, i32* @DIOCIGETIFACES, align 4
  %54 = call i64 @ioctl(i32 %52, i32 %53, %struct.pfioc_iface* %2)
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %61

56:                                               ; preds = %47
  %57 = load i32, i32* @LOG_ERR, align 4
  %58 = load i32, i32* @errno, align 4
  %59 = call i32 @strerror(i32 %58)
  %60 = call i32 (i32, i8*, i32, ...) @syslog(i32 %57, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0), i32 %59)
  br label %122

61:                                               ; preds = %47
  %62 = load i32, i32* %6, align 4
  %63 = getelementptr inbounds %struct.pfioc_iface, %struct.pfioc_iface* %2, i32 0, i32 1
  %64 = load i32, i32* %63, align 4
  %65 = icmp sge i32 %62, %64
  br i1 %65, label %66, label %67

66:                                               ; preds = %61
  br label %70

67:                                               ; preds = %61
  %68 = getelementptr inbounds %struct.pfioc_iface, %struct.pfioc_iface* %2, i32 0, i32 1
  %69 = load i32, i32* %68, align 4
  store i32 %69, i32* %6, align 4
  br label %32

70:                                               ; preds = %66
  store i32 0, i32* %5, align 4
  br label %71

71:                                               ; preds = %97, %70
  %72 = load i32, i32* %5, align 4
  %73 = load i32, i32* %6, align 4
  %74 = icmp slt i32 %72, %73
  br i1 %74, label %75, label %100

75:                                               ; preds = %71
  %76 = call %struct.pfi_kif* @malloc(i32 8)
  %77 = bitcast %struct.pfi_kif* %76 to %struct.pfi_entry*
  store %struct.pfi_entry* %77, %struct.pfi_entry** %4, align 8
  %78 = load %struct.pfi_entry*, %struct.pfi_entry** %4, align 8
  %79 = icmp eq %struct.pfi_entry* %78, null
  br i1 %79, label %80, label %81

80:                                               ; preds = %75
  br label %106

81:                                               ; preds = %75
  %82 = load i32, i32* %5, align 4
  %83 = add nsw i32 %82, 1
  %84 = load %struct.pfi_entry*, %struct.pfi_entry** %4, align 8
  %85 = getelementptr inbounds %struct.pfi_entry, %struct.pfi_entry* %84, i32 0, i32 0
  store i32 %83, i32* %85, align 4
  %86 = load %struct.pfi_entry*, %struct.pfi_entry** %4, align 8
  %87 = getelementptr inbounds %struct.pfi_entry, %struct.pfi_entry* %86, i32 0, i32 1
  %88 = load %struct.pfi_kif*, %struct.pfi_kif** %3, align 8
  %89 = load i32, i32* %5, align 4
  %90 = sext i32 %89 to i64
  %91 = getelementptr inbounds %struct.pfi_kif, %struct.pfi_kif* %88, i64 %90
  %92 = call i32 @memcpy(i32* %87, %struct.pfi_kif* %91, i32 8)
  %93 = load %struct.pfi_entry*, %struct.pfi_entry** %4, align 8
  %94 = bitcast %struct.pfi_entry* %93 to %struct.pfi_kif*
  %95 = load i32, i32* @link, align 4
  %96 = call i32 @TAILQ_INSERT_TAIL(i32* @pfi_table, %struct.pfi_kif* %94, i32 %95)
  br label %97

97:                                               ; preds = %81
  %98 = load i32, i32* %5, align 4
  %99 = add nsw i32 %98, 1
  store i32 %99, i32* %5, align 4
  br label %71

100:                                              ; preds = %71
  %101 = call i32 @time(i32* null)
  store i32 %101, i32* @pfi_table_age, align 4
  %102 = load i32, i32* %6, align 4
  store i32 %102, i32* @pfi_table_count, align 4
  %103 = load i64, i64* @this_tick, align 8
  store i64 %103, i64* @pf_tick, align 8
  %104 = load %struct.pfi_kif*, %struct.pfi_kif** %3, align 8
  %105 = call i32 @free(%struct.pfi_kif* %104)
  store i32 0, i32* %1, align 4
  br label %125

106:                                              ; preds = %80
  br label %107

107:                                              ; preds = %111, %106
  %108 = call i32 @TAILQ_EMPTY(i32* @pfi_table)
  %109 = icmp ne i32 %108, 0
  %110 = xor i1 %109, true
  br i1 %110, label %111, label %121

111:                                              ; preds = %107
  %112 = call %struct.pfi_kif* @TAILQ_FIRST(i32* @pfi_table)
  %113 = bitcast %struct.pfi_kif* %112 to %struct.pfi_entry*
  store %struct.pfi_entry* %113, %struct.pfi_entry** %4, align 8
  %114 = load %struct.pfi_entry*, %struct.pfi_entry** %4, align 8
  %115 = bitcast %struct.pfi_entry* %114 to %struct.pfi_kif*
  %116 = load i32, i32* @link, align 4
  %117 = call i32 @TAILQ_REMOVE(i32* @pfi_table, %struct.pfi_kif* %115, i32 %116)
  %118 = load %struct.pfi_entry*, %struct.pfi_entry** %4, align 8
  %119 = bitcast %struct.pfi_entry* %118 to %struct.pfi_kif*
  %120 = call i32 @free(%struct.pfi_kif* %119)
  br label %107

121:                                              ; preds = %107
  br label %122

122:                                              ; preds = %121, %56, %41
  %123 = load %struct.pfi_kif*, %struct.pfi_kif** %3, align 8
  %124 = call i32 @free(%struct.pfi_kif* %123)
  store i32 -1, i32* %1, align 4
  br label %125

125:                                              ; preds = %122, %100, %13
  %126 = load i32, i32* %1, align 4
  ret i32 %126
}

declare dso_local i32 @TAILQ_EMPTY(i32*) #1

declare dso_local %struct.pfi_kif* @TAILQ_FIRST(i32*) #1

declare dso_local i32 @TAILQ_REMOVE(i32*, %struct.pfi_kif*, i32) #1

declare dso_local i32 @free(%struct.pfi_kif*) #1

declare dso_local i32 @bzero(%struct.pfioc_iface*, i32) #1

declare dso_local %struct.pfi_kif* @reallocf(%struct.pfi_kif*, i32) #1

declare dso_local i32 @syslog(i32, i8*, i32, ...) #1

declare dso_local i32 @strerror(i32) #1

declare dso_local i64 @ioctl(i32, i32, %struct.pfioc_iface*) #1

declare dso_local %struct.pfi_kif* @malloc(i32) #1

declare dso_local i32 @memcpy(i32*, %struct.pfi_kif*, i32) #1

declare dso_local i32 @TAILQ_INSERT_TAIL(i32*, %struct.pfi_kif*, i32) #1

declare dso_local i32 @time(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
