; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/xen/netfront/extr_netfront.c_write_queue_xenstore_keys.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/xen/netfront/extr_netfront.c_write_queue_xenstore_keys.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.netfront_rxq = type { i32, i64, i32 }
%struct.netfront_txq = type { i32, i64, i32 }
%struct.xs_transaction = type { i32 }

@.str = private unnamed_addr constant [37 x i8] c"Mismatch between RX and TX queue ids\00", align 1
@.str.1 = private unnamed_addr constant [39 x i8] c"Split event channels are not supported\00", align 1
@M_DEVBUF = common dso_local global i32 0, align 4
@M_WAITOK = common dso_local global i32 0, align 4
@M_ZERO = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [12 x i8] c"%s/queue-%u\00", align 1
@.str.3 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.4 = private unnamed_addr constant [12 x i8] c"tx-ring-ref\00", align 1
@.str.5 = private unnamed_addr constant [3 x i8] c"%u\00", align 1
@.str.6 = private unnamed_addr constant [20 x i8] c"writing tx ring-ref\00", align 1
@.str.7 = private unnamed_addr constant [12 x i8] c"rx-ring-ref\00", align 1
@.str.8 = private unnamed_addr constant [20 x i8] c"writing rx ring-ref\00", align 1
@.str.9 = private unnamed_addr constant [14 x i8] c"event-channel\00", align 1
@.str.10 = private unnamed_addr constant [22 x i8] c"writing event-channel\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, %struct.netfront_rxq*, %struct.netfront_txq*, %struct.xs_transaction*, i32)* @write_queue_xenstore_keys to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @write_queue_xenstore_keys(i32 %0, %struct.netfront_rxq* %1, %struct.netfront_txq* %2, %struct.xs_transaction* %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.netfront_rxq*, align 8
  %9 = alloca %struct.netfront_txq*, align 8
  %10 = alloca %struct.xs_transaction*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i64, align 8
  store i32 %0, i32* %7, align 4
  store %struct.netfront_rxq* %1, %struct.netfront_rxq** %8, align 8
  store %struct.netfront_txq* %2, %struct.netfront_txq** %9, align 8
  store %struct.xs_transaction* %3, %struct.xs_transaction** %10, align 8
  store i32 %4, i32* %11, align 4
  %17 = load i32, i32* %7, align 4
  %18 = call i8* @xenbus_get_node(i32 %17)
  store i8* %18, i8** %14, align 8
  %19 = load %struct.netfront_rxq*, %struct.netfront_rxq** %8, align 8
  %20 = getelementptr inbounds %struct.netfront_rxq, %struct.netfront_rxq* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = load %struct.netfront_txq*, %struct.netfront_txq** %9, align 8
  %23 = getelementptr inbounds %struct.netfront_txq, %struct.netfront_txq* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = icmp eq i32 %21, %24
  %26 = zext i1 %25 to i32
  %27 = call i32 @KASSERT(i32 %26, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0))
  %28 = load %struct.netfront_rxq*, %struct.netfront_rxq** %8, align 8
  %29 = getelementptr inbounds %struct.netfront_rxq, %struct.netfront_rxq* %28, i32 0, i32 1
  %30 = load i64, i64* %29, align 8
  %31 = load %struct.netfront_txq*, %struct.netfront_txq** %9, align 8
  %32 = getelementptr inbounds %struct.netfront_txq, %struct.netfront_txq* %31, i32 0, i32 1
  %33 = load i64, i64* %32, align 8
  %34 = icmp eq i64 %30, %33
  %35 = zext i1 %34 to i32
  %36 = call i32 @KASSERT(i32 %35, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.1, i64 0, i64 0))
  %37 = load i32, i32* %11, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %57

39:                                               ; preds = %5
  %40 = load i8*, i8** %14, align 8
  %41 = call i32 @strlen(i8* %40)
  %42 = add nsw i32 %41, 10
  %43 = sext i32 %42 to i64
  store i64 %43, i64* %16, align 8
  %44 = load i64, i64* %16, align 8
  %45 = load i32, i32* @M_DEVBUF, align 4
  %46 = load i32, i32* @M_WAITOK, align 4
  %47 = load i32, i32* @M_ZERO, align 4
  %48 = or i32 %46, %47
  %49 = call i8* @malloc(i64 %44, i32 %45, i32 %48)
  store i8* %49, i8** %15, align 8
  %50 = load i8*, i8** %15, align 8
  %51 = load i64, i64* %16, align 8
  %52 = load i8*, i8** %14, align 8
  %53 = load %struct.netfront_rxq*, %struct.netfront_rxq** %8, align 8
  %54 = getelementptr inbounds %struct.netfront_rxq, %struct.netfront_rxq* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 8
  %56 = call i32 (i8*, i64, i8*, i8*, ...) @snprintf(i8* %50, i64 %51, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 0), i8* %52, i32 %55)
  br label %72

57:                                               ; preds = %5
  %58 = load i8*, i8** %14, align 8
  %59 = call i32 @strlen(i8* %58)
  %60 = add nsw i32 %59, 1
  %61 = sext i32 %60 to i64
  store i64 %61, i64* %16, align 8
  %62 = load i64, i64* %16, align 8
  %63 = load i32, i32* @M_DEVBUF, align 4
  %64 = load i32, i32* @M_WAITOK, align 4
  %65 = load i32, i32* @M_ZERO, align 4
  %66 = or i32 %64, %65
  %67 = call i8* @malloc(i64 %62, i32 %63, i32 %66)
  store i8* %67, i8** %15, align 8
  %68 = load i8*, i8** %15, align 8
  %69 = load i64, i64* %16, align 8
  %70 = load i8*, i8** %14, align 8
  %71 = call i32 (i8*, i64, i8*, i8*, ...) @snprintf(i8* %68, i64 %69, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), i8* %70)
  br label %72

72:                                               ; preds = %57, %39
  %73 = load %struct.xs_transaction*, %struct.xs_transaction** %10, align 8
  %74 = load i8*, i8** %15, align 8
  %75 = load %struct.netfront_txq*, %struct.netfront_txq** %9, align 8
  %76 = getelementptr inbounds %struct.netfront_txq, %struct.netfront_txq* %75, i32 0, i32 2
  %77 = load i32, i32* %76, align 8
  %78 = getelementptr inbounds %struct.xs_transaction, %struct.xs_transaction* %73, i32 0, i32 0
  %79 = load i32, i32* %78, align 4
  %80 = call i32 @xs_printf(i32 %79, i8* %74, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5, i64 0, i64 0), i32 %77)
  store i32 %80, i32* %12, align 4
  %81 = load i32, i32* %12, align 4
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %83, label %84

83:                                               ; preds = %72
  store i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.6, i64 0, i64 0), i8** %13, align 8
  br label %113

84:                                               ; preds = %72
  %85 = load %struct.xs_transaction*, %struct.xs_transaction** %10, align 8
  %86 = load i8*, i8** %15, align 8
  %87 = load %struct.netfront_rxq*, %struct.netfront_rxq** %8, align 8
  %88 = getelementptr inbounds %struct.netfront_rxq, %struct.netfront_rxq* %87, i32 0, i32 2
  %89 = load i32, i32* %88, align 8
  %90 = getelementptr inbounds %struct.xs_transaction, %struct.xs_transaction* %85, i32 0, i32 0
  %91 = load i32, i32* %90, align 4
  %92 = call i32 @xs_printf(i32 %91, i8* %86, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.7, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5, i64 0, i64 0), i32 %89)
  store i32 %92, i32* %12, align 4
  %93 = load i32, i32* %12, align 4
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %95, label %96

95:                                               ; preds = %84
  store i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.8, i64 0, i64 0), i8** %13, align 8
  br label %113

96:                                               ; preds = %84
  %97 = load %struct.xs_transaction*, %struct.xs_transaction** %10, align 8
  %98 = load i8*, i8** %15, align 8
  %99 = load %struct.netfront_rxq*, %struct.netfront_rxq** %8, align 8
  %100 = getelementptr inbounds %struct.netfront_rxq, %struct.netfront_rxq* %99, i32 0, i32 1
  %101 = load i64, i64* %100, align 8
  %102 = call i32 @xen_intr_port(i64 %101)
  %103 = getelementptr inbounds %struct.xs_transaction, %struct.xs_transaction* %97, i32 0, i32 0
  %104 = load i32, i32* %103, align 4
  %105 = call i32 @xs_printf(i32 %104, i8* %98, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.9, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5, i64 0, i64 0), i32 %102)
  store i32 %105, i32* %12, align 4
  %106 = load i32, i32* %12, align 4
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %108, label %109

108:                                              ; preds = %96
  store i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.10, i64 0, i64 0), i8** %13, align 8
  br label %113

109:                                              ; preds = %96
  %110 = load i8*, i8** %15, align 8
  %111 = load i32, i32* @M_DEVBUF, align 4
  %112 = call i32 @free(i8* %110, i32 %111)
  store i32 0, i32* %6, align 4
  br label %122

113:                                              ; preds = %108, %95, %83
  %114 = load i8*, i8** %15, align 8
  %115 = load i32, i32* @M_DEVBUF, align 4
  %116 = call i32 @free(i8* %114, i32 %115)
  %117 = load i32, i32* %7, align 4
  %118 = load i32, i32* %12, align 4
  %119 = load i8*, i8** %13, align 8
  %120 = call i32 @xenbus_dev_fatal(i32 %117, i32 %118, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), i8* %119)
  %121 = load i32, i32* %12, align 4
  store i32 %121, i32* %6, align 4
  br label %122

122:                                              ; preds = %113, %109
  %123 = load i32, i32* %6, align 4
  ret i32 %123
}

declare dso_local i8* @xenbus_get_node(i32) #1

declare dso_local i32 @KASSERT(i32, i8*) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i8* @malloc(i64, i32, i32) #1

declare dso_local i32 @snprintf(i8*, i64, i8*, i8*, ...) #1

declare dso_local i32 @xs_printf(i32, i8*, i8*, i8*, i32) #1

declare dso_local i32 @xen_intr_port(i64) #1

declare dso_local i32 @free(i8*, i32) #1

declare dso_local i32 @xenbus_dev_fatal(i32, i32, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
