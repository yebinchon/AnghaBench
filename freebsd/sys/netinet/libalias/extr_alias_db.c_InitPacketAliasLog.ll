; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netinet/libalias/extr_alias_db.c_InitPacketAliasLog.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netinet/libalias/extr_alias_db.c_InitPacketAliasLog.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.libalias = type { i32, i32 }

@PKT_ALIAS_LOG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [19 x i8] c"/var/log/alias.log\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"w\00", align 1
@.str.2 = private unnamed_addr constant [63 x i8] c"PacketAlias/InitPacketAliasLog: Packet alias logging enabled.\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@LIBALIAS_BUF_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.libalias*)* @InitPacketAliasLog to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @InitPacketAliasLog(%struct.libalias* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.libalias*, align 8
  store %struct.libalias* %0, %struct.libalias** %3, align 8
  %4 = load %struct.libalias*, %struct.libalias** %3, align 8
  %5 = call i32 @LIBALIAS_LOCK_ASSERT(%struct.libalias* %4)
  %6 = load %struct.libalias*, %struct.libalias** %3, align 8
  %7 = getelementptr inbounds %struct.libalias, %struct.libalias* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = xor i32 %8, -1
  %10 = load i32, i32* @PKT_ALIAS_LOG, align 4
  %11 = and i32 %9, %10
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %31

13:                                               ; preds = %1
  %14 = call i32 @fopen(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  %15 = load %struct.libalias*, %struct.libalias** %3, align 8
  %16 = getelementptr inbounds %struct.libalias, %struct.libalias* %15, i32 0, i32 1
  store i32 %14, i32* %16, align 4
  %17 = icmp ne i32 %14, 0
  br i1 %17, label %18, label %23

18:                                               ; preds = %13
  %19 = load %struct.libalias*, %struct.libalias** %3, align 8
  %20 = getelementptr inbounds %struct.libalias, %struct.libalias* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @fprintf(i32 %21, i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str.2, i64 0, i64 0))
  br label %25

23:                                               ; preds = %13
  %24 = load i32, i32* @ENOMEM, align 4
  store i32 %24, i32* %2, align 4
  br label %32

25:                                               ; preds = %18
  %26 = load i32, i32* @PKT_ALIAS_LOG, align 4
  %27 = load %struct.libalias*, %struct.libalias** %3, align 8
  %28 = getelementptr inbounds %struct.libalias, %struct.libalias* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = or i32 %29, %26
  store i32 %30, i32* %28, align 4
  br label %31

31:                                               ; preds = %25, %1
  store i32 1, i32* %2, align 4
  br label %32

32:                                               ; preds = %31, %23
  %33 = load i32, i32* %2, align 4
  ret i32 %33
}

declare dso_local i32 @LIBALIAS_LOCK_ASSERT(%struct.libalias*) #1

declare dso_local i32 @fopen(i8*, i8*) #1

declare dso_local i32 @fprintf(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
