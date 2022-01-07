; ModuleID = '/home/carl/AnghaBench/freebsd/sys/fs/nfsserver/extr_nfs_nfsdstate.c_nfsrv_cache_session.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/fs/nfsserver/extr_nfs_nfsdstate.c_nfsrv_cache_session.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mbuf = type { i32 }
%struct.nfsdsession = type { i32 }
%struct.nfssessionhash = type { i32 }

@.str = private unnamed_addr constant [33 x i8] c"nfsrv_cache_session: no session\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @nfsrv_cache_session(i32* %0, i32 %1, i32 %2, %struct.mbuf** %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.mbuf**, align 8
  %9 = alloca %struct.nfsdsession*, align 8
  %10 = alloca %struct.nfssessionhash*, align 8
  store i32* %0, i32** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store %struct.mbuf** %3, %struct.mbuf*** %8, align 8
  %11 = load i32*, i32** %5, align 8
  %12 = call %struct.nfssessionhash* @NFSSESSIONHASH(i32* %11)
  store %struct.nfssessionhash* %12, %struct.nfssessionhash** %10, align 8
  %13 = load %struct.nfssessionhash*, %struct.nfssessionhash** %10, align 8
  %14 = call i32 @NFSLOCKSESSION(%struct.nfssessionhash* %13)
  %15 = load i32*, i32** %5, align 8
  %16 = call %struct.nfsdsession* @nfsrv_findsession(i32* %15)
  store %struct.nfsdsession* %16, %struct.nfsdsession** %9, align 8
  %17 = load %struct.nfsdsession*, %struct.nfsdsession** %9, align 8
  %18 = icmp eq %struct.nfsdsession* %17, null
  br i1 %18, label %19, label %26

19:                                               ; preds = %4
  %20 = load %struct.nfssessionhash*, %struct.nfssessionhash** %10, align 8
  %21 = call i32 @NFSUNLOCKSESSION(%struct.nfssessionhash* %20)
  %22 = call i32 @printf(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0))
  %23 = load %struct.mbuf**, %struct.mbuf*** %8, align 8
  %24 = load %struct.mbuf*, %struct.mbuf** %23, align 8
  %25 = call i32 @m_freem(%struct.mbuf* %24)
  br label %36

26:                                               ; preds = %4
  %27 = load i32, i32* %6, align 4
  %28 = load %struct.nfsdsession*, %struct.nfsdsession** %9, align 8
  %29 = getelementptr inbounds %struct.nfsdsession, %struct.nfsdsession* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = load i32, i32* %7, align 4
  %32 = load %struct.mbuf**, %struct.mbuf*** %8, align 8
  %33 = call i32 @nfsv4_seqsess_cacherep(i32 %27, i32 %30, i32 %31, %struct.mbuf** %32)
  %34 = load %struct.nfssessionhash*, %struct.nfssessionhash** %10, align 8
  %35 = call i32 @NFSUNLOCKSESSION(%struct.nfssessionhash* %34)
  br label %36

36:                                               ; preds = %26, %19
  ret void
}

declare dso_local %struct.nfssessionhash* @NFSSESSIONHASH(i32*) #1

declare dso_local i32 @NFSLOCKSESSION(%struct.nfssessionhash*) #1

declare dso_local %struct.nfsdsession* @nfsrv_findsession(i32*) #1

declare dso_local i32 @NFSUNLOCKSESSION(%struct.nfssessionhash*) #1

declare dso_local i32 @printf(i8*) #1

declare dso_local i32 @m_freem(%struct.mbuf*) #1

declare dso_local i32 @nfsv4_seqsess_cacherep(i32, i32, i32, %struct.mbuf**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
