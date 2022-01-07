; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netipsec/extr_key.c_key_delsah.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netipsec/extr_key.c_key_delsah.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.secashead = type { i64, i32, i32 }

@.str = private unnamed_addr constant [9 x i8] c"NULL sah\00", align 1
@SADB_SASTATE_DEAD = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [32 x i8] c"Attempt to free non DEAD SAH %p\00", align 1
@.str.2 = private unnamed_addr constant [38 x i8] c"Attempt to free SAH %p with LARVAL SA\00", align 1
@.str.3 = private unnamed_addr constant [37 x i8] c"Attempt to free SAH %p with ALIVE SA\00", align 1
@M_IPSEC_SAH = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.secashead*)* @key_delsah to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @key_delsah(%struct.secashead* %0) #0 {
  %2 = alloca %struct.secashead*, align 8
  store %struct.secashead* %0, %struct.secashead** %2, align 8
  %3 = load %struct.secashead*, %struct.secashead** %2, align 8
  %4 = icmp ne %struct.secashead* %3, null
  %5 = zext i1 %4 to i32
  %6 = call i32 @IPSEC_ASSERT(i32 %5, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0))
  %7 = load %struct.secashead*, %struct.secashead** %2, align 8
  %8 = getelementptr inbounds %struct.secashead, %struct.secashead* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = load i64, i64* @SADB_SASTATE_DEAD, align 8
  %11 = icmp eq i64 %9, %10
  %12 = zext i1 %11 to i32
  %13 = load %struct.secashead*, %struct.secashead** %2, align 8
  %14 = bitcast %struct.secashead* %13 to i8*
  %15 = call i32 @IPSEC_ASSERT(i32 %12, i8* %14)
  %16 = load %struct.secashead*, %struct.secashead** %2, align 8
  %17 = getelementptr inbounds %struct.secashead, %struct.secashead* %16, i32 0, i32 2
  %18 = call i32 @TAILQ_EMPTY(i32* %17)
  %19 = load %struct.secashead*, %struct.secashead** %2, align 8
  %20 = bitcast %struct.secashead* %19 to i8*
  %21 = call i32 @IPSEC_ASSERT(i32 %18, i8* %20)
  %22 = load %struct.secashead*, %struct.secashead** %2, align 8
  %23 = getelementptr inbounds %struct.secashead, %struct.secashead* %22, i32 0, i32 1
  %24 = call i32 @TAILQ_EMPTY(i32* %23)
  %25 = load %struct.secashead*, %struct.secashead** %2, align 8
  %26 = bitcast %struct.secashead* %25 to i8*
  %27 = call i32 @IPSEC_ASSERT(i32 %24, i8* %26)
  %28 = load %struct.secashead*, %struct.secashead** %2, align 8
  %29 = load i32, i32* @M_IPSEC_SAH, align 4
  %30 = call i32 @free(%struct.secashead* %28, i32 %29)
  ret void
}

declare dso_local i32 @IPSEC_ASSERT(i32, i8*) #1

declare dso_local i32 @TAILQ_EMPTY(i32*) #1

declare dso_local i32 @free(%struct.secashead*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
