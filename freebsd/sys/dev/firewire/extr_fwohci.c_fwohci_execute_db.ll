; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/firewire/extr_fwohci.c_fwohci_execute_db.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/firewire/extr_fwohci.c_fwohci_execute_db.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32, i32 }
%struct.fwohcidb_tr = type { i64, %struct.fwohcidb* }
%struct.fwohcidb = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32, i32, i32 }

@firewire_debug = common dso_local global i64 0, align 8
@EFBIG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"fwohci_execute_db: error=%d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, %struct.TYPE_7__*, i32, i32)* @fwohci_execute_db to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fwohci_execute_db(i8* %0, %struct.TYPE_7__* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca %struct.TYPE_7__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.fwohcidb_tr*, align 8
  %10 = alloca %struct.fwohcidb*, align 8
  %11 = alloca %struct.TYPE_7__*, align 8
  %12 = alloca i32, align 4
  store i8* %0, i8** %5, align 8
  store %struct.TYPE_7__* %1, %struct.TYPE_7__** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %13 = load i8*, i8** %5, align 8
  %14 = bitcast i8* %13 to %struct.fwohcidb_tr*
  store %struct.fwohcidb_tr* %14, %struct.fwohcidb_tr** %9, align 8
  %15 = load %struct.fwohcidb_tr*, %struct.fwohcidb_tr** %9, align 8
  %16 = getelementptr inbounds %struct.fwohcidb_tr, %struct.fwohcidb_tr* %15, i32 0, i32 1
  %17 = load %struct.fwohcidb*, %struct.fwohcidb** %16, align 8
  %18 = load %struct.fwohcidb_tr*, %struct.fwohcidb_tr** %9, align 8
  %19 = getelementptr inbounds %struct.fwohcidb_tr, %struct.fwohcidb_tr* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = getelementptr inbounds %struct.fwohcidb, %struct.fwohcidb* %17, i64 %20
  store %struct.fwohcidb* %21, %struct.fwohcidb** %10, align 8
  %22 = load i32, i32* %8, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %35

24:                                               ; preds = %4
  %25 = load i64, i64* @firewire_debug, align 8
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %31, label %27

27:                                               ; preds = %24
  %28 = load i32, i32* %8, align 4
  %29 = load i32, i32* @EFBIG, align 4
  %30 = icmp ne i32 %28, %29
  br i1 %30, label %31, label %34

31:                                               ; preds = %27, %24
  %32 = load i32, i32* %8, align 4
  %33 = call i32 @printf(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i32 %32)
  br label %34

34:                                               ; preds = %31, %27
  br label %78

35:                                               ; preds = %4
  store i32 0, i32* %12, align 4
  br label %36

36:                                               ; preds = %75, %35
  %37 = load i32, i32* %12, align 4
  %38 = load i32, i32* %7, align 4
  %39 = icmp slt i32 %37, %38
  br i1 %39, label %40, label %78

40:                                               ; preds = %36
  %41 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %42 = load i32, i32* %12, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %41, i64 %43
  store %struct.TYPE_7__* %44, %struct.TYPE_7__** %11, align 8
  %45 = load %struct.fwohcidb*, %struct.fwohcidb** %10, align 8
  %46 = getelementptr inbounds %struct.fwohcidb, %struct.fwohcidb* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %47, i32 0, i32 2
  %49 = load i32, i32* %48, align 4
  %50 = load %struct.TYPE_7__*, %struct.TYPE_7__** %11, align 8
  %51 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 4
  %53 = call i32 @FWOHCI_DMA_WRITE(i32 %49, i32 %52)
  %54 = load %struct.fwohcidb*, %struct.fwohcidb** %10, align 8
  %55 = getelementptr inbounds %struct.fwohcidb, %struct.fwohcidb* %54, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %55, i32 0, i32 0
  %57 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 4
  %59 = load %struct.TYPE_7__*, %struct.TYPE_7__** %11, align 8
  %60 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = call i32 @FWOHCI_DMA_WRITE(i32 %58, i32 %61)
  %63 = load %struct.fwohcidb*, %struct.fwohcidb** %10, align 8
  %64 = getelementptr inbounds %struct.fwohcidb, %struct.fwohcidb* %63, i32 0, i32 0
  %65 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %64, i32 0, i32 0
  %66 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = call i32 @FWOHCI_DMA_WRITE(i32 %67, i32 0)
  %69 = load %struct.fwohcidb*, %struct.fwohcidb** %10, align 8
  %70 = getelementptr inbounds %struct.fwohcidb, %struct.fwohcidb* %69, i32 1
  store %struct.fwohcidb* %70, %struct.fwohcidb** %10, align 8
  %71 = load %struct.fwohcidb_tr*, %struct.fwohcidb_tr** %9, align 8
  %72 = getelementptr inbounds %struct.fwohcidb_tr, %struct.fwohcidb_tr* %71, i32 0, i32 0
  %73 = load i64, i64* %72, align 8
  %74 = add i64 %73, 1
  store i64 %74, i64* %72, align 8
  br label %75

75:                                               ; preds = %40
  %76 = load i32, i32* %12, align 4
  %77 = add nsw i32 %76, 1
  store i32 %77, i32* %12, align 4
  br label %36

78:                                               ; preds = %34, %36
  ret void
}

declare dso_local i32 @printf(i8*, i32) #1

declare dso_local i32 @FWOHCI_DMA_WRITE(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
