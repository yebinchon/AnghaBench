; ModuleID = '/home/carl/AnghaBench/freebsd/sys/fs/nfsserver/extr_nfs_nfsdstate.c_nfsrv_freesession.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/fs/nfsserver/extr_nfs_nfsdstate.c_nfsrv_freesession.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfsdsession = type { i64, %struct.TYPE_4__, %struct.TYPE_3__*, i32* }
%struct.TYPE_4__ = type { i32* }
%struct.TYPE_3__ = type { i32* }
%struct.nfssessionhash = type { i32 }

@NFSERR_BACKCHANBUSY = common dso_local global i32 0, align 4
@sess_hash = common dso_local global i32 0, align 4
@sess_list = common dso_local global i32 0, align 4
@NFSERR_BADSESSION = common dso_local global i32 0, align 4
@NFSV4_SLOTS = common dso_local global i32 0, align 4
@M_NFSDSESSION = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nfsdsession*, i32*)* @nfsrv_freesession to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nfsrv_freesession(%struct.nfsdsession* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.nfsdsession*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.nfssessionhash*, align 8
  %7 = alloca i32, align 4
  store %struct.nfsdsession* %0, %struct.nfsdsession** %4, align 8
  store i32* %1, i32** %5, align 8
  %8 = call i32 (...) @NFSLOCKSTATE()
  %9 = load %struct.nfsdsession*, %struct.nfsdsession** %4, align 8
  %10 = icmp eq %struct.nfsdsession* %9, null
  br i1 %10, label %11, label %18

11:                                               ; preds = %2
  %12 = load i32*, i32** %5, align 8
  %13 = call %struct.nfssessionhash* @NFSSESSIONHASH(i32* %12)
  store %struct.nfssessionhash* %13, %struct.nfssessionhash** %6, align 8
  %14 = load %struct.nfssessionhash*, %struct.nfssessionhash** %6, align 8
  %15 = call i32 @NFSLOCKSESSION(%struct.nfssessionhash* %14)
  %16 = load i32*, i32** %5, align 8
  %17 = call %struct.nfsdsession* @nfsrv_findsession(i32* %16)
  store %struct.nfsdsession* %17, %struct.nfsdsession** %4, align 8
  br label %25

18:                                               ; preds = %2
  %19 = load %struct.nfsdsession*, %struct.nfsdsession** %4, align 8
  %20 = getelementptr inbounds %struct.nfsdsession, %struct.nfsdsession* %19, i32 0, i32 3
  %21 = load i32*, i32** %20, align 8
  %22 = call %struct.nfssessionhash* @NFSSESSIONHASH(i32* %21)
  store %struct.nfssessionhash* %22, %struct.nfssessionhash** %6, align 8
  %23 = load %struct.nfssessionhash*, %struct.nfssessionhash** %6, align 8
  %24 = call i32 @NFSLOCKSESSION(%struct.nfssessionhash* %23)
  br label %25

25:                                               ; preds = %18, %11
  %26 = load %struct.nfsdsession*, %struct.nfsdsession** %4, align 8
  %27 = icmp ne %struct.nfsdsession* %26, null
  br i1 %27, label %28, label %49

28:                                               ; preds = %25
  %29 = load %struct.nfsdsession*, %struct.nfsdsession** %4, align 8
  %30 = getelementptr inbounds %struct.nfsdsession, %struct.nfsdsession* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = add nsw i64 %31, -1
  store i64 %32, i64* %30, align 8
  %33 = load %struct.nfsdsession*, %struct.nfsdsession** %4, align 8
  %34 = getelementptr inbounds %struct.nfsdsession, %struct.nfsdsession* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = icmp sgt i64 %35, 0
  br i1 %36, label %37, label %42

37:                                               ; preds = %28
  %38 = load %struct.nfssessionhash*, %struct.nfssessionhash** %6, align 8
  %39 = call i32 @NFSUNLOCKSESSION(%struct.nfssessionhash* %38)
  %40 = call i32 (...) @NFSUNLOCKSTATE()
  %41 = load i32, i32* @NFSERR_BACKCHANBUSY, align 4
  store i32 %41, i32* %3, align 4
  br label %102

42:                                               ; preds = %28
  %43 = load %struct.nfsdsession*, %struct.nfsdsession** %4, align 8
  %44 = load i32, i32* @sess_hash, align 4
  %45 = call i32 @LIST_REMOVE(%struct.nfsdsession* %43, i32 %44)
  %46 = load %struct.nfsdsession*, %struct.nfsdsession** %4, align 8
  %47 = load i32, i32* @sess_list, align 4
  %48 = call i32 @LIST_REMOVE(%struct.nfsdsession* %46, i32 %47)
  br label %49

49:                                               ; preds = %42, %25
  %50 = load %struct.nfssessionhash*, %struct.nfssessionhash** %6, align 8
  %51 = call i32 @NFSUNLOCKSESSION(%struct.nfssessionhash* %50)
  %52 = call i32 (...) @NFSUNLOCKSTATE()
  %53 = load %struct.nfsdsession*, %struct.nfsdsession** %4, align 8
  %54 = icmp eq %struct.nfsdsession* %53, null
  br i1 %54, label %55, label %57

55:                                               ; preds = %49
  %56 = load i32, i32* @NFSERR_BADSESSION, align 4
  store i32 %56, i32* %3, align 4
  br label %102

57:                                               ; preds = %49
  store i32 0, i32* %7, align 4
  br label %58

58:                                               ; preds = %83, %57
  %59 = load i32, i32* %7, align 4
  %60 = load i32, i32* @NFSV4_SLOTS, align 4
  %61 = icmp slt i32 %59, %60
  br i1 %61, label %62, label %86

62:                                               ; preds = %58
  %63 = load %struct.nfsdsession*, %struct.nfsdsession** %4, align 8
  %64 = getelementptr inbounds %struct.nfsdsession, %struct.nfsdsession* %63, i32 0, i32 2
  %65 = load %struct.TYPE_3__*, %struct.TYPE_3__** %64, align 8
  %66 = load i32, i32* %7, align 4
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %65, i64 %67
  %69 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %68, i32 0, i32 0
  %70 = load i32*, i32** %69, align 8
  %71 = icmp ne i32* %70, null
  br i1 %71, label %72, label %82

72:                                               ; preds = %62
  %73 = load %struct.nfsdsession*, %struct.nfsdsession** %4, align 8
  %74 = getelementptr inbounds %struct.nfsdsession, %struct.nfsdsession* %73, i32 0, i32 2
  %75 = load %struct.TYPE_3__*, %struct.TYPE_3__** %74, align 8
  %76 = load i32, i32* %7, align 4
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %75, i64 %77
  %79 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %78, i32 0, i32 0
  %80 = load i32*, i32** %79, align 8
  %81 = call i32 @m_freem(i32* %80)
  br label %82

82:                                               ; preds = %72, %62
  br label %83

83:                                               ; preds = %82
  %84 = load i32, i32* %7, align 4
  %85 = add nsw i32 %84, 1
  store i32 %85, i32* %7, align 4
  br label %58

86:                                               ; preds = %58
  %87 = load %struct.nfsdsession*, %struct.nfsdsession** %4, align 8
  %88 = getelementptr inbounds %struct.nfsdsession, %struct.nfsdsession* %87, i32 0, i32 1
  %89 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %88, i32 0, i32 0
  %90 = load i32*, i32** %89, align 8
  %91 = icmp ne i32* %90, null
  br i1 %91, label %92, label %98

92:                                               ; preds = %86
  %93 = load %struct.nfsdsession*, %struct.nfsdsession** %4, align 8
  %94 = getelementptr inbounds %struct.nfsdsession, %struct.nfsdsession* %93, i32 0, i32 1
  %95 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %94, i32 0, i32 0
  %96 = load i32*, i32** %95, align 8
  %97 = call i32 @SVC_RELEASE(i32* %96)
  br label %98

98:                                               ; preds = %92, %86
  %99 = load %struct.nfsdsession*, %struct.nfsdsession** %4, align 8
  %100 = load i32, i32* @M_NFSDSESSION, align 4
  %101 = call i32 @free(%struct.nfsdsession* %99, i32 %100)
  store i32 0, i32* %3, align 4
  br label %102

102:                                              ; preds = %98, %55, %37
  %103 = load i32, i32* %3, align 4
  ret i32 %103
}

declare dso_local i32 @NFSLOCKSTATE(...) #1

declare dso_local %struct.nfssessionhash* @NFSSESSIONHASH(i32*) #1

declare dso_local i32 @NFSLOCKSESSION(%struct.nfssessionhash*) #1

declare dso_local %struct.nfsdsession* @nfsrv_findsession(i32*) #1

declare dso_local i32 @NFSUNLOCKSESSION(%struct.nfssessionhash*) #1

declare dso_local i32 @NFSUNLOCKSTATE(...) #1

declare dso_local i32 @LIST_REMOVE(%struct.nfsdsession*, i32) #1

declare dso_local i32 @m_freem(i32*) #1

declare dso_local i32 @SVC_RELEASE(i32*) #1

declare dso_local i32 @free(%struct.nfsdsession*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
