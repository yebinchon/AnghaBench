; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netipsec/extr_key.c_key_init.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netipsec/extr_key.c_key_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }

@IPSEC_DIR_MAX = common dso_local global i32 0, align 4
@V_sptree = common dso_local global i32* null, align 8
@V_sptree_ifnet = common dso_local global i32* null, align 8
@.str = private unnamed_addr constant [15 x i8] c"IPsec SA lft_c\00", align 1
@UMA_ALIGN_PTR = common dso_local global i32 0, align 4
@UMA_ZONE_PCPU = common dso_local global i32 0, align 4
@V_key_lft_zone = common dso_local global i32 0, align 4
@V_sahtree = common dso_local global i32 0, align 4
@SPHASH_NHASH = common dso_local global i32 0, align 4
@M_IPSEC_SP = common dso_local global i32 0, align 4
@V_sphash_mask = common dso_local global i32 0, align 4
@V_sphashtbl = common dso_local global i8* null, align 8
@SAVHASH_NHASH = common dso_local global i32 0, align 4
@M_IPSEC_SA = common dso_local global i32 0, align 4
@V_savhash_mask = common dso_local global i32 0, align 4
@V_savhashtbl = common dso_local global i8* null, align 8
@SAHHASH_NHASH = common dso_local global i32 0, align 4
@M_IPSEC_SAH = common dso_local global i32 0, align 4
@V_sahaddrhash_mask = common dso_local global i32 0, align 4
@V_sahaddrhashtbl = common dso_local global i8* null, align 8
@ACQHASH_NHASH = common dso_local global i32 0, align 4
@M_IPSEC_SAQ = common dso_local global i32 0, align 4
@V_acqaddrhash_mask = common dso_local global i32 0, align 4
@V_acqaddrhashtbl = common dso_local global i8* null, align 8
@V_acqseqhash_mask = common dso_local global i32 0, align 4
@V_acqseqhashtbl = common dso_local global i8* null, align 8
@SADB_SATYPE_MAX = common dso_local global i32 0, align 4
@V_regtree = common dso_local global i32* null, align 8
@V_acqtree = common dso_local global i32 0, align 4
@V_spacqtree = common dso_local global i32 0, align 4
@curvnet = common dso_local global i32 0, align 4
@key_timer = common dso_local global i32 0, align 4
@hz = common dso_local global i32 0, align 4
@key_timehandler = common dso_local global i32 0, align 4
@keystat = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4
@bootverbose = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [53 x i8] c"IPsec: Initialized Security Association Processing.\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @key_init() #0 {
  %1 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  br label %2

2:                                                ; preds = %17, %0
  %3 = load i32, i32* %1, align 4
  %4 = load i32, i32* @IPSEC_DIR_MAX, align 4
  %5 = icmp slt i32 %3, %4
  br i1 %5, label %6, label %20

6:                                                ; preds = %2
  %7 = load i32*, i32** @V_sptree, align 8
  %8 = load i32, i32* %1, align 4
  %9 = sext i32 %8 to i64
  %10 = getelementptr inbounds i32, i32* %7, i64 %9
  %11 = call i32 @TAILQ_INIT(i32* %10)
  %12 = load i32*, i32** @V_sptree_ifnet, align 8
  %13 = load i32, i32* %1, align 4
  %14 = sext i32 %13 to i64
  %15 = getelementptr inbounds i32, i32* %12, i64 %14
  %16 = call i32 @TAILQ_INIT(i32* %15)
  br label %17

17:                                               ; preds = %6
  %18 = load i32, i32* %1, align 4
  %19 = add nsw i32 %18, 1
  store i32 %19, i32* %1, align 4
  br label %2

20:                                               ; preds = %2
  %21 = load i32, i32* @UMA_ALIGN_PTR, align 4
  %22 = load i32, i32* @UMA_ZONE_PCPU, align 4
  %23 = call i32 @uma_zcreate(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i32 8, i32* null, i32* null, i32* null, i32* null, i32 %21, i32 %22)
  store i32 %23, i32* @V_key_lft_zone, align 4
  %24 = call i32 @TAILQ_INIT(i32* @V_sahtree)
  %25 = load i32, i32* @SPHASH_NHASH, align 4
  %26 = load i32, i32* @M_IPSEC_SP, align 4
  %27 = call i8* @hashinit(i32 %25, i32 %26, i32* @V_sphash_mask)
  store i8* %27, i8** @V_sphashtbl, align 8
  %28 = load i32, i32* @SAVHASH_NHASH, align 4
  %29 = load i32, i32* @M_IPSEC_SA, align 4
  %30 = call i8* @hashinit(i32 %28, i32 %29, i32* @V_savhash_mask)
  store i8* %30, i8** @V_savhashtbl, align 8
  %31 = load i32, i32* @SAHHASH_NHASH, align 4
  %32 = load i32, i32* @M_IPSEC_SAH, align 4
  %33 = call i8* @hashinit(i32 %31, i32 %32, i32* @V_sahaddrhash_mask)
  store i8* %33, i8** @V_sahaddrhashtbl, align 8
  %34 = load i32, i32* @ACQHASH_NHASH, align 4
  %35 = load i32, i32* @M_IPSEC_SAQ, align 4
  %36 = call i8* @hashinit(i32 %34, i32 %35, i32* @V_acqaddrhash_mask)
  store i8* %36, i8** @V_acqaddrhashtbl, align 8
  %37 = load i32, i32* @ACQHASH_NHASH, align 4
  %38 = load i32, i32* @M_IPSEC_SAQ, align 4
  %39 = call i8* @hashinit(i32 %37, i32 %38, i32* @V_acqseqhash_mask)
  store i8* %39, i8** @V_acqseqhashtbl, align 8
  %40 = call i32 (...) @spdcache_init()
  store i32 0, i32* %1, align 4
  br label %41

41:                                               ; preds = %51, %20
  %42 = load i32, i32* %1, align 4
  %43 = load i32, i32* @SADB_SATYPE_MAX, align 4
  %44 = icmp sle i32 %42, %43
  br i1 %44, label %45, label %54

45:                                               ; preds = %41
  %46 = load i32*, i32** @V_regtree, align 8
  %47 = load i32, i32* %1, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds i32, i32* %46, i64 %48
  %50 = call i32 @LIST_INIT(i32* %49)
  br label %51

51:                                               ; preds = %45
  %52 = load i32, i32* %1, align 4
  %53 = add nsw i32 %52, 1
  store i32 %53, i32* %1, align 4
  br label %41

54:                                               ; preds = %41
  %55 = call i32 @LIST_INIT(i32* @V_acqtree)
  %56 = call i32 @LIST_INIT(i32* @V_spacqtree)
  %57 = load i32, i32* @curvnet, align 4
  %58 = call i32 @IS_DEFAULT_VNET(i32 %57)
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %61, label %60

60:                                               ; preds = %54
  br label %75

61:                                               ; preds = %54
  %62 = call i32 (...) @SPTREE_LOCK_INIT()
  %63 = call i32 (...) @REGTREE_LOCK_INIT()
  %64 = call i32 (...) @SAHTREE_LOCK_INIT()
  %65 = call i32 (...) @ACQ_LOCK_INIT()
  %66 = call i32 (...) @SPACQ_LOCK_INIT()
  %67 = call i32 @callout_init(i32* @key_timer, i32 1)
  %68 = load i32, i32* @hz, align 4
  %69 = load i32, i32* @key_timehandler, align 4
  %70 = call i32 @callout_reset(i32* @key_timer, i32 %68, i32 %69, i32* null)
  store i32 1, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @keystat, i32 0, i32 0), align 4
  %71 = load i64, i64* @bootverbose, align 8
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %73, label %75

73:                                               ; preds = %61
  %74 = call i32 @printf(i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.1, i64 0, i64 0))
  br label %75

75:                                               ; preds = %60, %73, %61
  ret void
}

declare dso_local i32 @TAILQ_INIT(i32*) #1

declare dso_local i32 @uma_zcreate(i8*, i32, i32*, i32*, i32*, i32*, i32, i32) #1

declare dso_local i8* @hashinit(i32, i32, i32*) #1

declare dso_local i32 @spdcache_init(...) #1

declare dso_local i32 @LIST_INIT(i32*) #1

declare dso_local i32 @IS_DEFAULT_VNET(i32) #1

declare dso_local i32 @SPTREE_LOCK_INIT(...) #1

declare dso_local i32 @REGTREE_LOCK_INIT(...) #1

declare dso_local i32 @SAHTREE_LOCK_INIT(...) #1

declare dso_local i32 @ACQ_LOCK_INIT(...) #1

declare dso_local i32 @SPACQ_LOCK_INIT(...) #1

declare dso_local i32 @callout_init(i32*, i32) #1

declare dso_local i32 @callout_reset(i32*, i32, i32, i32*) #1

declare dso_local i32 @printf(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
