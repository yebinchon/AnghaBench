; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netpfil/ipfw/nat64/extr_nat64lsn.c_nat64lsn_destroy_pg.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netpfil/ipfw/nat64/extr_nat64lsn.c_nat64lsn_destroy_pg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nat64lsn_pg = type { i32, %struct.nat64lsn_pg**, %struct.nat64lsn_pg**, %struct.nat64lsn_pg* }

@nat64lsn_state_zone = common dso_local global i32 0, align 4
@M_NAT64LSN = common dso_local global i32 0, align 4
@nat64lsn_pg_zone = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.nat64lsn_pg*)* @nat64lsn_destroy_pg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nat64lsn_destroy_pg(%struct.nat64lsn_pg* %0) #0 {
  %2 = alloca %struct.nat64lsn_pg*, align 8
  %3 = alloca i32, align 4
  store %struct.nat64lsn_pg* %0, %struct.nat64lsn_pg** %2, align 8
  %4 = load %struct.nat64lsn_pg*, %struct.nat64lsn_pg** %2, align 8
  %5 = getelementptr inbounds %struct.nat64lsn_pg, %struct.nat64lsn_pg* %4, i32 0, i32 0
  %6 = load i32, i32* %5, align 8
  %7 = icmp eq i32 %6, 1
  br i1 %7, label %8, label %14

8:                                                ; preds = %1
  %9 = load i32, i32* @nat64lsn_state_zone, align 4
  %10 = load %struct.nat64lsn_pg*, %struct.nat64lsn_pg** %2, align 8
  %11 = getelementptr inbounds %struct.nat64lsn_pg, %struct.nat64lsn_pg* %10, i32 0, i32 3
  %12 = load %struct.nat64lsn_pg*, %struct.nat64lsn_pg** %11, align 8
  %13 = call i32 @uma_zfree(i32 %9, %struct.nat64lsn_pg* %12)
  br label %45

14:                                               ; preds = %1
  store i32 0, i32* %3, align 4
  br label %15

15:                                               ; preds = %31, %14
  %16 = load i32, i32* %3, align 4
  %17 = load %struct.nat64lsn_pg*, %struct.nat64lsn_pg** %2, align 8
  %18 = getelementptr inbounds %struct.nat64lsn_pg, %struct.nat64lsn_pg* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = icmp slt i32 %16, %19
  br i1 %20, label %21, label %34

21:                                               ; preds = %15
  %22 = load i32, i32* @nat64lsn_state_zone, align 4
  %23 = load %struct.nat64lsn_pg*, %struct.nat64lsn_pg** %2, align 8
  %24 = getelementptr inbounds %struct.nat64lsn_pg, %struct.nat64lsn_pg* %23, i32 0, i32 2
  %25 = load %struct.nat64lsn_pg**, %struct.nat64lsn_pg*** %24, align 8
  %26 = load i32, i32* %3, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds %struct.nat64lsn_pg*, %struct.nat64lsn_pg** %25, i64 %27
  %29 = load %struct.nat64lsn_pg*, %struct.nat64lsn_pg** %28, align 8
  %30 = call i32 @uma_zfree(i32 %22, %struct.nat64lsn_pg* %29)
  br label %31

31:                                               ; preds = %21
  %32 = load i32, i32* %3, align 4
  %33 = add nsw i32 %32, 1
  store i32 %33, i32* %3, align 4
  br label %15

34:                                               ; preds = %15
  %35 = load %struct.nat64lsn_pg*, %struct.nat64lsn_pg** %2, align 8
  %36 = getelementptr inbounds %struct.nat64lsn_pg, %struct.nat64lsn_pg* %35, i32 0, i32 2
  %37 = load %struct.nat64lsn_pg**, %struct.nat64lsn_pg*** %36, align 8
  %38 = load i32, i32* @M_NAT64LSN, align 4
  %39 = call i32 @free(%struct.nat64lsn_pg** %37, i32 %38)
  %40 = load %struct.nat64lsn_pg*, %struct.nat64lsn_pg** %2, align 8
  %41 = getelementptr inbounds %struct.nat64lsn_pg, %struct.nat64lsn_pg* %40, i32 0, i32 1
  %42 = load %struct.nat64lsn_pg**, %struct.nat64lsn_pg*** %41, align 8
  %43 = load i32, i32* @M_NAT64LSN, align 4
  %44 = call i32 @free(%struct.nat64lsn_pg** %42, i32 %43)
  br label %45

45:                                               ; preds = %34, %8
  %46 = load i32, i32* @nat64lsn_pg_zone, align 4
  %47 = load %struct.nat64lsn_pg*, %struct.nat64lsn_pg** %2, align 8
  %48 = call i32 @uma_zfree(i32 %46, %struct.nat64lsn_pg* %47)
  ret void
}

declare dso_local i32 @uma_zfree(i32, %struct.nat64lsn_pg*) #1

declare dso_local i32 @free(%struct.nat64lsn_pg**, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
