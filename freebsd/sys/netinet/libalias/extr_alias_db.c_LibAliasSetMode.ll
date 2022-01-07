; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netinet/libalias/extr_alias_db.c_LibAliasSetMode.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netinet/libalias/extr_alias_db.c_LibAliasSetMode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.libalias = type { i32 }

@PKT_ALIAS_LOG = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i64 0, align 8
@PKT_ALIAS_PUNCH_FW = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @LibAliasSetMode(%struct.libalias* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.libalias*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.libalias* %0, %struct.libalias** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  store i32 -1, i32* %7, align 4
  %8 = load %struct.libalias*, %struct.libalias** %4, align 8
  %9 = call i32 @LIBALIAS_LOCK(%struct.libalias* %8)
  %10 = load i32, i32* %5, align 4
  %11 = load i32, i32* %6, align 4
  %12 = and i32 %10, %11
  %13 = load i32, i32* @PKT_ALIAS_LOG, align 4
  %14 = and i32 %12, %13
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %23

16:                                               ; preds = %3
  %17 = load %struct.libalias*, %struct.libalias** %4, align 8
  %18 = call i64 @InitPacketAliasLog(%struct.libalias* %17)
  %19 = load i64, i64* @ENOMEM, align 8
  %20 = icmp eq i64 %18, %19
  br i1 %20, label %21, label %22

21:                                               ; preds = %16
  br label %73

22:                                               ; preds = %16
  br label %35

23:                                               ; preds = %3
  %24 = load i32, i32* %5, align 4
  %25 = xor i32 %24, -1
  %26 = load i32, i32* %6, align 4
  %27 = and i32 %25, %26
  %28 = load i32, i32* @PKT_ALIAS_LOG, align 4
  %29 = and i32 %27, %28
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %34

31:                                               ; preds = %23
  %32 = load %struct.libalias*, %struct.libalias** %4, align 8
  %33 = call i32 @UninitPacketAliasLog(%struct.libalias* %32)
  br label %34

34:                                               ; preds = %31, %23
  br label %35

35:                                               ; preds = %34, %22
  %36 = load i32, i32* %5, align 4
  %37 = load i32, i32* %6, align 4
  %38 = and i32 %36, %37
  %39 = load i32, i32* @PKT_ALIAS_PUNCH_FW, align 4
  %40 = and i32 %38, %39
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %45

42:                                               ; preds = %35
  %43 = load %struct.libalias*, %struct.libalias** %4, align 8
  %44 = call i32 @InitPunchFW(%struct.libalias* %43)
  br label %57

45:                                               ; preds = %35
  %46 = load i32, i32* %5, align 4
  %47 = xor i32 %46, -1
  %48 = load i32, i32* %6, align 4
  %49 = and i32 %47, %48
  %50 = load i32, i32* @PKT_ALIAS_PUNCH_FW, align 4
  %51 = and i32 %49, %50
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %56

53:                                               ; preds = %45
  %54 = load %struct.libalias*, %struct.libalias** %4, align 8
  %55 = call i32 @UninitPunchFW(%struct.libalias* %54)
  br label %56

56:                                               ; preds = %53, %45
  br label %57

57:                                               ; preds = %56, %42
  %58 = load i32, i32* %5, align 4
  %59 = load i32, i32* %6, align 4
  %60 = and i32 %58, %59
  %61 = load %struct.libalias*, %struct.libalias** %4, align 8
  %62 = getelementptr inbounds %struct.libalias, %struct.libalias* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = load i32, i32* %6, align 4
  %65 = xor i32 %64, -1
  %66 = and i32 %63, %65
  %67 = or i32 %60, %66
  %68 = load %struct.libalias*, %struct.libalias** %4, align 8
  %69 = getelementptr inbounds %struct.libalias, %struct.libalias* %68, i32 0, i32 0
  store i32 %67, i32* %69, align 4
  %70 = load %struct.libalias*, %struct.libalias** %4, align 8
  %71 = getelementptr inbounds %struct.libalias, %struct.libalias* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  store i32 %72, i32* %7, align 4
  br label %73

73:                                               ; preds = %57, %21
  %74 = load %struct.libalias*, %struct.libalias** %4, align 8
  %75 = call i32 @LIBALIAS_UNLOCK(%struct.libalias* %74)
  %76 = load i32, i32* %7, align 4
  ret i32 %76
}

declare dso_local i32 @LIBALIAS_LOCK(%struct.libalias*) #1

declare dso_local i64 @InitPacketAliasLog(%struct.libalias*) #1

declare dso_local i32 @UninitPacketAliasLog(%struct.libalias*) #1

declare dso_local i32 @InitPunchFW(%struct.libalias*) #1

declare dso_local i32 @UninitPunchFW(%struct.libalias*) #1

declare dso_local i32 @LIBALIAS_UNLOCK(%struct.libalias*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
