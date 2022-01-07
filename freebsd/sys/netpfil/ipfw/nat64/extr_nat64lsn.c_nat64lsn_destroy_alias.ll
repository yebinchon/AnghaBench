; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netpfil/ipfw/nat64/extr_nat64lsn.c_nat64lsn_destroy_alias.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netpfil/ipfw/nat64/extr_nat64lsn.c_nat64lsn_destroy_alias.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nat64lsn_cfg = type { i32 }
%struct.nat64lsn_alias = type { i32*, i32, i32*, i32, i32*, i32, i32 }
%struct.nat64lsn_pg = type { i32 }

@entries = common dso_local global i32 0, align 4
@nat64lsn_pgchunk_zone = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.nat64lsn_cfg*, %struct.nat64lsn_alias*)* @nat64lsn_destroy_alias to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nat64lsn_destroy_alias(%struct.nat64lsn_cfg* %0, %struct.nat64lsn_alias* %1) #0 {
  %3 = alloca %struct.nat64lsn_cfg*, align 8
  %4 = alloca %struct.nat64lsn_alias*, align 8
  %5 = alloca %struct.nat64lsn_pg*, align 8
  %6 = alloca i32, align 4
  store %struct.nat64lsn_cfg* %0, %struct.nat64lsn_cfg** %3, align 8
  store %struct.nat64lsn_alias* %1, %struct.nat64lsn_alias** %4, align 8
  br label %7

7:                                                ; preds = %13, %2
  %8 = load %struct.nat64lsn_alias*, %struct.nat64lsn_alias** %4, align 8
  %9 = getelementptr inbounds %struct.nat64lsn_alias, %struct.nat64lsn_alias* %8, i32 0, i32 6
  %10 = call i32 @CK_SLIST_EMPTY(i32* %9)
  %11 = icmp ne i32 %10, 0
  %12 = xor i1 %11, true
  br i1 %12, label %13, label %23

13:                                               ; preds = %7
  %14 = load %struct.nat64lsn_alias*, %struct.nat64lsn_alias** %4, align 8
  %15 = getelementptr inbounds %struct.nat64lsn_alias, %struct.nat64lsn_alias* %14, i32 0, i32 6
  %16 = call %struct.nat64lsn_pg* @CK_SLIST_FIRST(i32* %15)
  store %struct.nat64lsn_pg* %16, %struct.nat64lsn_pg** %5, align 8
  %17 = load %struct.nat64lsn_alias*, %struct.nat64lsn_alias** %4, align 8
  %18 = getelementptr inbounds %struct.nat64lsn_alias, %struct.nat64lsn_alias* %17, i32 0, i32 6
  %19 = load i32, i32* @entries, align 4
  %20 = call i32 @CK_SLIST_REMOVE_HEAD(i32* %18, i32 %19)
  %21 = load %struct.nat64lsn_pg*, %struct.nat64lsn_pg** %5, align 8
  %22 = call i32 @nat64lsn_destroy_pg(%struct.nat64lsn_pg* %21)
  br label %7

23:                                               ; preds = %7
  store i32 0, i32* %6, align 4
  br label %24

24:                                               ; preds = %79, %23
  %25 = load i32, i32* %6, align 4
  %26 = icmp slt i32 %25, 32
  br i1 %26, label %27, label %82

27:                                               ; preds = %24
  %28 = load %struct.nat64lsn_alias*, %struct.nat64lsn_alias** %4, align 8
  %29 = getelementptr inbounds %struct.nat64lsn_alias, %struct.nat64lsn_alias* %28, i32 0, i32 5
  %30 = load i32, i32* %29, align 8
  %31 = load i32, i32* %6, align 4
  %32 = call i64 @ISSET32(i32 %30, i32 %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %44

34:                                               ; preds = %27
  %35 = load i32, i32* @nat64lsn_pgchunk_zone, align 4
  %36 = load %struct.nat64lsn_alias*, %struct.nat64lsn_alias** %4, align 8
  %37 = getelementptr inbounds %struct.nat64lsn_alias, %struct.nat64lsn_alias* %36, i32 0, i32 4
  %38 = load i32*, i32** %37, align 8
  %39 = load i32, i32* %6, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds i32, i32* %38, i64 %40
  %42 = load i32, i32* %41, align 4
  %43 = call i32 @uma_zfree(i32 %35, i32 %42)
  br label %44

44:                                               ; preds = %34, %27
  %45 = load %struct.nat64lsn_alias*, %struct.nat64lsn_alias** %4, align 8
  %46 = getelementptr inbounds %struct.nat64lsn_alias, %struct.nat64lsn_alias* %45, i32 0, i32 3
  %47 = load i32, i32* %46, align 8
  %48 = load i32, i32* %6, align 4
  %49 = call i64 @ISSET32(i32 %47, i32 %48)
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %61

51:                                               ; preds = %44
  %52 = load i32, i32* @nat64lsn_pgchunk_zone, align 4
  %53 = load %struct.nat64lsn_alias*, %struct.nat64lsn_alias** %4, align 8
  %54 = getelementptr inbounds %struct.nat64lsn_alias, %struct.nat64lsn_alias* %53, i32 0, i32 2
  %55 = load i32*, i32** %54, align 8
  %56 = load i32, i32* %6, align 4
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds i32, i32* %55, i64 %57
  %59 = load i32, i32* %58, align 4
  %60 = call i32 @uma_zfree(i32 %52, i32 %59)
  br label %61

61:                                               ; preds = %51, %44
  %62 = load %struct.nat64lsn_alias*, %struct.nat64lsn_alias** %4, align 8
  %63 = getelementptr inbounds %struct.nat64lsn_alias, %struct.nat64lsn_alias* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 8
  %65 = load i32, i32* %6, align 4
  %66 = call i64 @ISSET32(i32 %64, i32 %65)
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %78

68:                                               ; preds = %61
  %69 = load i32, i32* @nat64lsn_pgchunk_zone, align 4
  %70 = load %struct.nat64lsn_alias*, %struct.nat64lsn_alias** %4, align 8
  %71 = getelementptr inbounds %struct.nat64lsn_alias, %struct.nat64lsn_alias* %70, i32 0, i32 0
  %72 = load i32*, i32** %71, align 8
  %73 = load i32, i32* %6, align 4
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds i32, i32* %72, i64 %74
  %76 = load i32, i32* %75, align 4
  %77 = call i32 @uma_zfree(i32 %69, i32 %76)
  br label %78

78:                                               ; preds = %68, %61
  br label %79

79:                                               ; preds = %78
  %80 = load i32, i32* %6, align 4
  %81 = add nsw i32 %80, 1
  store i32 %81, i32* %6, align 4
  br label %24

82:                                               ; preds = %24
  %83 = load %struct.nat64lsn_alias*, %struct.nat64lsn_alias** %4, align 8
  %84 = call i32 @ALIAS_LOCK_DESTROY(%struct.nat64lsn_alias* %83)
  ret void
}

declare dso_local i32 @CK_SLIST_EMPTY(i32*) #1

declare dso_local %struct.nat64lsn_pg* @CK_SLIST_FIRST(i32*) #1

declare dso_local i32 @CK_SLIST_REMOVE_HEAD(i32*, i32) #1

declare dso_local i32 @nat64lsn_destroy_pg(%struct.nat64lsn_pg*) #1

declare dso_local i64 @ISSET32(i32, i32) #1

declare dso_local i32 @uma_zfree(i32, i32) #1

declare dso_local i32 @ALIAS_LOCK_DESTROY(%struct.nat64lsn_alias*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
