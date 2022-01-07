; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netipsec/extr_key.c_key_delsav.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netipsec/extr_key.c_key_delsav.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.secasvar = type { i64, i64, i32, i32, %struct.secasvar* }

@.str = private unnamed_addr constant [9 x i8] c"null sav\00", align 1
@SADB_SASTATE_DEAD = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [31 x i8] c"attempt to free non DEAD SA %p\00", align 1
@.str.2 = private unnamed_addr constant [23 x i8] c"reference count %u > 0\00", align 1
@SADB_X_EXT_F_CLONED = common dso_local global i32 0, align 4
@M_IPSEC_MISC = common dso_local global i32 0, align 4
@V_key_lft_zone = common dso_local global i32 0, align 4
@M_IPSEC_SA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.secasvar*)* @key_delsav to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @key_delsav(%struct.secasvar* %0) #0 {
  %2 = alloca %struct.secasvar*, align 8
  store %struct.secasvar* %0, %struct.secasvar** %2, align 8
  %3 = load %struct.secasvar*, %struct.secasvar** %2, align 8
  %4 = icmp ne %struct.secasvar* %3, null
  %5 = zext i1 %4 to i32
  %6 = call i32 @IPSEC_ASSERT(i32 %5, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0))
  %7 = load %struct.secasvar*, %struct.secasvar** %2, align 8
  %8 = getelementptr inbounds %struct.secasvar, %struct.secasvar* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = load i64, i64* @SADB_SASTATE_DEAD, align 8
  %11 = icmp eq i64 %9, %10
  %12 = zext i1 %11 to i32
  %13 = load %struct.secasvar*, %struct.secasvar** %2, align 8
  %14 = bitcast %struct.secasvar* %13 to i8*
  %15 = call i32 @IPSEC_ASSERT(i32 %12, i8* %14)
  %16 = load %struct.secasvar*, %struct.secasvar** %2, align 8
  %17 = getelementptr inbounds %struct.secasvar, %struct.secasvar* %16, i32 0, i32 1
  %18 = load i64, i64* %17, align 8
  %19 = icmp eq i64 %18, 0
  %20 = zext i1 %19 to i32
  %21 = load %struct.secasvar*, %struct.secasvar** %2, align 8
  %22 = getelementptr inbounds %struct.secasvar, %struct.secasvar* %21, i32 0, i32 1
  %23 = load i64, i64* %22, align 8
  %24 = inttoptr i64 %23 to i8*
  %25 = call i32 @IPSEC_ASSERT(i32 %20, i8* %24)
  %26 = load %struct.secasvar*, %struct.secasvar** %2, align 8
  %27 = call i32 @key_cleansav(%struct.secasvar* %26)
  %28 = load %struct.secasvar*, %struct.secasvar** %2, align 8
  %29 = getelementptr inbounds %struct.secasvar, %struct.secasvar* %28, i32 0, i32 2
  %30 = load i32, i32* %29, align 8
  %31 = load i32, i32* @SADB_X_EXT_F_CLONED, align 4
  %32 = and i32 %30, %31
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %34, label %49

34:                                               ; preds = %1
  %35 = load %struct.secasvar*, %struct.secasvar** %2, align 8
  %36 = getelementptr inbounds %struct.secasvar, %struct.secasvar* %35, i32 0, i32 4
  %37 = load %struct.secasvar*, %struct.secasvar** %36, align 8
  %38 = call i32 @mtx_destroy(%struct.secasvar* %37)
  %39 = load %struct.secasvar*, %struct.secasvar** %2, align 8
  %40 = getelementptr inbounds %struct.secasvar, %struct.secasvar* %39, i32 0, i32 4
  %41 = load %struct.secasvar*, %struct.secasvar** %40, align 8
  %42 = load i32, i32* @M_IPSEC_MISC, align 4
  %43 = call i32 @free(%struct.secasvar* %41, i32 %42)
  %44 = load i32, i32* @V_key_lft_zone, align 4
  %45 = load %struct.secasvar*, %struct.secasvar** %2, align 8
  %46 = getelementptr inbounds %struct.secasvar, %struct.secasvar* %45, i32 0, i32 3
  %47 = load i32, i32* %46, align 4
  %48 = call i32 @uma_zfree(i32 %44, i32 %47)
  br label %49

49:                                               ; preds = %34, %1
  %50 = load %struct.secasvar*, %struct.secasvar** %2, align 8
  %51 = load i32, i32* @M_IPSEC_SA, align 4
  %52 = call i32 @free(%struct.secasvar* %50, i32 %51)
  ret void
}

declare dso_local i32 @IPSEC_ASSERT(i32, i8*) #1

declare dso_local i32 @key_cleansav(%struct.secasvar*) #1

declare dso_local i32 @mtx_destroy(%struct.secasvar*) #1

declare dso_local i32 @free(%struct.secasvar*, i32) #1

declare dso_local i32 @uma_zfree(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
