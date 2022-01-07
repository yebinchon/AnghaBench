; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netsmb/extr_smb_iod.c_smb_iod_create.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netsmb/extr_smb_iod.c_smb_iod_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.smb_vc = type { %struct.smbiod* }
%struct.smbiod = type { i32, i32, i32, i64, i32, i32, i32, i32, %struct.TYPE_2__, %struct.smb_vc*, i32 }
%struct.TYPE_2__ = type { i32 }

@M_SMBIOD = common dso_local global i32 0, align 4
@M_WAITOK = common dso_local global i32 0, align 4
@smb_iod_next = common dso_local global i32 0, align 4
@SMBIOD_ST_NOTCONN = common dso_local global i32 0, align 4
@hz = common dso_local global i32 0, align 4
@SMBIOD_SLEEP_TIMO = common dso_local global i32 0, align 4
@SMBIOD_PING_TIMO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [6 x i8] c"90rql\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"90evl\00", align 1
@smb_iod_thread = common dso_local global i32 0, align 4
@RFNOWAIT = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [9 x i8] c"smbiod%d\00", align 1
@.str.3 = private unnamed_addr constant [23 x i8] c"can't start smbiod: %d\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @smb_iod_create(%struct.smb_vc* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.smb_vc*, align 8
  %4 = alloca %struct.smbiod*, align 8
  %5 = alloca i32, align 4
  store %struct.smb_vc* %0, %struct.smb_vc** %3, align 8
  %6 = load i32, i32* @M_SMBIOD, align 4
  %7 = load i32, i32* @M_WAITOK, align 4
  %8 = call %struct.smbiod* @smb_zmalloc(i32 64, i32 %6, i32 %7)
  store %struct.smbiod* %8, %struct.smbiod** %4, align 8
  %9 = load i32, i32* @smb_iod_next, align 4
  %10 = add nsw i32 %9, 1
  store i32 %10, i32* @smb_iod_next, align 4
  %11 = sext i32 %9 to i64
  %12 = load %struct.smbiod*, %struct.smbiod** %4, align 8
  %13 = getelementptr inbounds %struct.smbiod, %struct.smbiod* %12, i32 0, i32 3
  store i64 %11, i64* %13, align 8
  %14 = load i32, i32* @SMBIOD_ST_NOTCONN, align 4
  %15 = load %struct.smbiod*, %struct.smbiod** %4, align 8
  %16 = getelementptr inbounds %struct.smbiod, %struct.smbiod* %15, i32 0, i32 10
  store i32 %14, i32* %16, align 8
  %17 = load %struct.smb_vc*, %struct.smb_vc** %3, align 8
  %18 = load %struct.smbiod*, %struct.smbiod** %4, align 8
  %19 = getelementptr inbounds %struct.smbiod, %struct.smbiod* %18, i32 0, i32 9
  store %struct.smb_vc* %17, %struct.smb_vc** %19, align 8
  %20 = load i32, i32* @hz, align 4
  %21 = load i32, i32* @SMBIOD_SLEEP_TIMO, align 4
  %22 = mul nsw i32 %20, %21
  %23 = load %struct.smbiod*, %struct.smbiod** %4, align 8
  %24 = getelementptr inbounds %struct.smbiod, %struct.smbiod* %23, i32 0, i32 0
  store i32 %22, i32* %24, align 8
  %25 = load i32, i32* @SMBIOD_PING_TIMO, align 4
  %26 = load %struct.smbiod*, %struct.smbiod** %4, align 8
  %27 = getelementptr inbounds %struct.smbiod, %struct.smbiod* %26, i32 0, i32 8
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 0
  store i32 %25, i32* %28, align 8
  %29 = load %struct.smbiod*, %struct.smbiod** %4, align 8
  %30 = getelementptr inbounds %struct.smbiod, %struct.smbiod* %29, i32 0, i32 7
  %31 = call i32 @getnanotime(i32* %30)
  %32 = load %struct.smbiod*, %struct.smbiod** %4, align 8
  %33 = load %struct.smb_vc*, %struct.smb_vc** %3, align 8
  %34 = getelementptr inbounds %struct.smb_vc, %struct.smb_vc* %33, i32 0, i32 0
  store %struct.smbiod* %32, %struct.smbiod** %34, align 8
  %35 = load %struct.smbiod*, %struct.smbiod** %4, align 8
  %36 = getelementptr inbounds %struct.smbiod, %struct.smbiod* %35, i32 0, i32 2
  %37 = call i32 @smb_sl_init(i32* %36, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0))
  %38 = load %struct.smbiod*, %struct.smbiod** %4, align 8
  %39 = getelementptr inbounds %struct.smbiod, %struct.smbiod* %38, i32 0, i32 6
  %40 = call i32 @TAILQ_INIT(i32* %39)
  %41 = load %struct.smbiod*, %struct.smbiod** %4, align 8
  %42 = getelementptr inbounds %struct.smbiod, %struct.smbiod* %41, i32 0, i32 1
  %43 = call i32 @smb_sl_init(i32* %42, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0))
  %44 = load %struct.smbiod*, %struct.smbiod** %4, align 8
  %45 = getelementptr inbounds %struct.smbiod, %struct.smbiod* %44, i32 0, i32 5
  %46 = call i32 @STAILQ_INIT(i32* %45)
  %47 = load i32, i32* @smb_iod_thread, align 4
  %48 = load %struct.smbiod*, %struct.smbiod** %4, align 8
  %49 = load %struct.smbiod*, %struct.smbiod** %4, align 8
  %50 = getelementptr inbounds %struct.smbiod, %struct.smbiod* %49, i32 0, i32 4
  %51 = load i32, i32* @RFNOWAIT, align 4
  %52 = load %struct.smbiod*, %struct.smbiod** %4, align 8
  %53 = getelementptr inbounds %struct.smbiod, %struct.smbiod* %52, i32 0, i32 3
  %54 = load i64, i64* %53, align 8
  %55 = call i32 @kproc_create(i32 %47, %struct.smbiod* %48, i32* %50, i32 %51, i32 0, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0), i64 %54)
  store i32 %55, i32* %5, align 4
  %56 = load i32, i32* %5, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %73

58:                                               ; preds = %1
  %59 = load i32, i32* %5, align 4
  %60 = call i32 @SMBERROR(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.3, i64 0, i64 0), i32 %59)
  %61 = load %struct.smb_vc*, %struct.smb_vc** %3, align 8
  %62 = getelementptr inbounds %struct.smb_vc, %struct.smb_vc* %61, i32 0, i32 0
  store %struct.smbiod* null, %struct.smbiod** %62, align 8
  %63 = load %struct.smbiod*, %struct.smbiod** %4, align 8
  %64 = getelementptr inbounds %struct.smbiod, %struct.smbiod* %63, i32 0, i32 2
  %65 = call i32 @smb_sl_destroy(i32* %64)
  %66 = load %struct.smbiod*, %struct.smbiod** %4, align 8
  %67 = getelementptr inbounds %struct.smbiod, %struct.smbiod* %66, i32 0, i32 1
  %68 = call i32 @smb_sl_destroy(i32* %67)
  %69 = load %struct.smbiod*, %struct.smbiod** %4, align 8
  %70 = load i32, i32* @M_SMBIOD, align 4
  %71 = call i32 @free(%struct.smbiod* %69, i32 %70)
  %72 = load i32, i32* %5, align 4
  store i32 %72, i32* %2, align 4
  br label %74

73:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %74

74:                                               ; preds = %73, %58
  %75 = load i32, i32* %2, align 4
  ret i32 %75
}

declare dso_local %struct.smbiod* @smb_zmalloc(i32, i32, i32) #1

declare dso_local i32 @getnanotime(i32*) #1

declare dso_local i32 @smb_sl_init(i32*, i8*) #1

declare dso_local i32 @TAILQ_INIT(i32*) #1

declare dso_local i32 @STAILQ_INIT(i32*) #1

declare dso_local i32 @kproc_create(i32, %struct.smbiod*, i32*, i32, i32, i8*, i64) #1

declare dso_local i32 @SMBERROR(i8*, i32) #1

declare dso_local i32 @smb_sl_destroy(i32*) #1

declare dso_local i32 @free(%struct.smbiod*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
