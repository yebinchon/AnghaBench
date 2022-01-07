; ModuleID = '/home/carl/AnghaBench/freebsd/sys/fs/nfsserver/extr_nfs_nfsdstate.c_nfsrv_checkreclaimcomplete.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/fs/nfsserver/extr_nfs_nfsdstate.c_nfsrv_checkreclaimcomplete.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfsrv_descript = type { i32 }
%struct.nfsdsession = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.nfssessionhash = type { i32 }

@NFSERR_BADSESSION = common dso_local global i32 0, align 4
@LCL_RECLAIMONEFS = common dso_local global i32 0, align 4
@LCL_RECLAIMCOMPLETE = common dso_local global i32 0, align 4
@NFSERR_COMPLETEALREADY = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nfsrv_checkreclaimcomplete(%struct.nfsrv_descript* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.nfsrv_descript*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.nfsdsession*, align 8
  %7 = alloca %struct.nfssessionhash*, align 8
  %8 = alloca i32, align 4
  store %struct.nfsrv_descript* %0, %struct.nfsrv_descript** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 0, i32* %8, align 4
  %9 = load %struct.nfsrv_descript*, %struct.nfsrv_descript** %4, align 8
  %10 = getelementptr inbounds %struct.nfsrv_descript, %struct.nfsrv_descript* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = call %struct.nfssessionhash* @NFSSESSIONHASH(i32 %11)
  store %struct.nfssessionhash* %12, %struct.nfssessionhash** %7, align 8
  %13 = call i32 (...) @NFSLOCKSTATE()
  %14 = load %struct.nfssessionhash*, %struct.nfssessionhash** %7, align 8
  %15 = call i32 @NFSLOCKSESSION(%struct.nfssessionhash* %14)
  %16 = load %struct.nfsrv_descript*, %struct.nfsrv_descript** %4, align 8
  %17 = getelementptr inbounds %struct.nfsrv_descript, %struct.nfsrv_descript* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = call %struct.nfsdsession* @nfsrv_findsession(i32 %18)
  store %struct.nfsdsession* %19, %struct.nfsdsession** %6, align 8
  %20 = load %struct.nfsdsession*, %struct.nfsdsession** %6, align 8
  %21 = icmp eq %struct.nfsdsession* %20, null
  br i1 %21, label %22, label %27

22:                                               ; preds = %2
  %23 = load %struct.nfssessionhash*, %struct.nfssessionhash** %7, align 8
  %24 = call i32 @NFSUNLOCKSESSION(%struct.nfssessionhash* %23)
  %25 = call i32 (...) @NFSUNLOCKSTATE()
  %26 = load i32, i32* @NFSERR_BADSESSION, align 4
  store i32 %26, i32* %3, align 4
  br label %67

27:                                               ; preds = %2
  %28 = load i32, i32* %5, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %38

30:                                               ; preds = %27
  %31 = load i32, i32* @LCL_RECLAIMONEFS, align 4
  %32 = load %struct.nfsdsession*, %struct.nfsdsession** %6, align 8
  %33 = getelementptr inbounds %struct.nfsdsession, %struct.nfsdsession* %32, i32 0, i32 0
  %34 = load %struct.TYPE_2__*, %struct.TYPE_2__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = or i32 %36, %31
  store i32 %37, i32* %35, align 4
  br label %62

38:                                               ; preds = %27
  %39 = load %struct.nfsdsession*, %struct.nfsdsession** %6, align 8
  %40 = getelementptr inbounds %struct.nfsdsession, %struct.nfsdsession* %39, i32 0, i32 0
  %41 = load %struct.TYPE_2__*, %struct.TYPE_2__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = load i32, i32* @LCL_RECLAIMCOMPLETE, align 4
  %45 = and i32 %43, %44
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %49

47:                                               ; preds = %38
  %48 = load i32, i32* @NFSERR_COMPLETEALREADY, align 4
  store i32 %48, i32* %8, align 4
  br label %61

49:                                               ; preds = %38
  %50 = load i32, i32* @LCL_RECLAIMCOMPLETE, align 4
  %51 = load %struct.nfsdsession*, %struct.nfsdsession** %6, align 8
  %52 = getelementptr inbounds %struct.nfsdsession, %struct.nfsdsession* %51, i32 0, i32 0
  %53 = load %struct.TYPE_2__*, %struct.TYPE_2__** %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = or i32 %55, %50
  store i32 %56, i32* %54, align 4
  %57 = load %struct.nfsdsession*, %struct.nfsdsession** %6, align 8
  %58 = getelementptr inbounds %struct.nfsdsession, %struct.nfsdsession* %57, i32 0, i32 0
  %59 = load %struct.TYPE_2__*, %struct.TYPE_2__** %58, align 8
  %60 = call i32 @nfsrv_markreclaim(%struct.TYPE_2__* %59)
  br label %61

61:                                               ; preds = %49, %47
  br label %62

62:                                               ; preds = %61, %30
  %63 = load %struct.nfssessionhash*, %struct.nfssessionhash** %7, align 8
  %64 = call i32 @NFSUNLOCKSESSION(%struct.nfssessionhash* %63)
  %65 = call i32 (...) @NFSUNLOCKSTATE()
  %66 = load i32, i32* %8, align 4
  store i32 %66, i32* %3, align 4
  br label %67

67:                                               ; preds = %62, %22
  %68 = load i32, i32* %3, align 4
  ret i32 %68
}

declare dso_local %struct.nfssessionhash* @NFSSESSIONHASH(i32) #1

declare dso_local i32 @NFSLOCKSTATE(...) #1

declare dso_local i32 @NFSLOCKSESSION(%struct.nfssessionhash*) #1

declare dso_local %struct.nfsdsession* @nfsrv_findsession(i32) #1

declare dso_local i32 @NFSUNLOCKSESSION(%struct.nfssessionhash*) #1

declare dso_local i32 @NFSUNLOCKSTATE(...) #1

declare dso_local i32 @nfsrv_markreclaim(%struct.TYPE_2__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
