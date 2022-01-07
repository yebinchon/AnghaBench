; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netpfil/ipfw/nat64/extr_nat64lsn.c_nat64lsn_destroy_host.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netpfil/ipfw/nat64/extr_nat64lsn.c_nat64lsn_destroy_host.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nat64lsn_host = type { i32, %struct.TYPE_3__*, i32 }
%struct.TYPE_3__ = type { i32, i32 }
%struct.nat64lsn_aliaslink = type { i32, %struct.TYPE_3__*, i32 }

@host_entries = common dso_local global i32 0, align 4
@nat64lsn_aliaslink = common dso_local global i32 0, align 4
@alias_entries = common dso_local global i32 0, align 4
@nat64lsn_aliaslink_zone = common dso_local global i32 0, align 4
@M_NAT64LSN = common dso_local global i32 0, align 4
@nat64lsn_host_zone = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.nat64lsn_host*)* @nat64lsn_destroy_host to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nat64lsn_destroy_host(%struct.nat64lsn_host* %0) #0 {
  %2 = alloca %struct.nat64lsn_host*, align 8
  %3 = alloca %struct.nat64lsn_aliaslink*, align 8
  store %struct.nat64lsn_host* %0, %struct.nat64lsn_host** %2, align 8
  br label %4

4:                                                ; preds = %10, %1
  %5 = load %struct.nat64lsn_host*, %struct.nat64lsn_host** %2, align 8
  %6 = getelementptr inbounds %struct.nat64lsn_host, %struct.nat64lsn_host* %5, i32 0, i32 2
  %7 = call i32 @CK_SLIST_EMPTY(i32* %6)
  %8 = icmp ne i32 %7, 0
  %9 = xor i1 %8, true
  br i1 %9, label %10, label %46

10:                                               ; preds = %4
  %11 = load %struct.nat64lsn_host*, %struct.nat64lsn_host** %2, align 8
  %12 = getelementptr inbounds %struct.nat64lsn_host, %struct.nat64lsn_host* %11, i32 0, i32 2
  %13 = call %struct.nat64lsn_host* @CK_SLIST_FIRST(i32* %12)
  %14 = bitcast %struct.nat64lsn_host* %13 to %struct.nat64lsn_aliaslink*
  store %struct.nat64lsn_aliaslink* %14, %struct.nat64lsn_aliaslink** %3, align 8
  %15 = load %struct.nat64lsn_host*, %struct.nat64lsn_host** %2, align 8
  %16 = getelementptr inbounds %struct.nat64lsn_host, %struct.nat64lsn_host* %15, i32 0, i32 2
  %17 = load i32, i32* @host_entries, align 4
  %18 = call i32 @CK_SLIST_REMOVE_HEAD(i32* %16, i32 %17)
  %19 = load %struct.nat64lsn_aliaslink*, %struct.nat64lsn_aliaslink** %3, align 8
  %20 = getelementptr inbounds %struct.nat64lsn_aliaslink, %struct.nat64lsn_aliaslink* %19, i32 0, i32 1
  %21 = load %struct.TYPE_3__*, %struct.TYPE_3__** %20, align 8
  %22 = call i32 @ALIAS_LOCK(%struct.TYPE_3__* %21)
  %23 = load %struct.nat64lsn_aliaslink*, %struct.nat64lsn_aliaslink** %3, align 8
  %24 = getelementptr inbounds %struct.nat64lsn_aliaslink, %struct.nat64lsn_aliaslink* %23, i32 0, i32 1
  %25 = load %struct.TYPE_3__*, %struct.TYPE_3__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %25, i32 0, i32 1
  %27 = load %struct.nat64lsn_aliaslink*, %struct.nat64lsn_aliaslink** %3, align 8
  %28 = bitcast %struct.nat64lsn_aliaslink* %27 to %struct.nat64lsn_host*
  %29 = load i32, i32* @nat64lsn_aliaslink, align 4
  %30 = load i32, i32* @alias_entries, align 4
  %31 = call i32 @CK_SLIST_REMOVE(i32* %26, %struct.nat64lsn_host* %28, i32 %29, i32 %30)
  %32 = load %struct.nat64lsn_aliaslink*, %struct.nat64lsn_aliaslink** %3, align 8
  %33 = getelementptr inbounds %struct.nat64lsn_aliaslink, %struct.nat64lsn_aliaslink* %32, i32 0, i32 1
  %34 = load %struct.TYPE_3__*, %struct.TYPE_3__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = add nsw i32 %36, -1
  store i32 %37, i32* %35, align 4
  %38 = load %struct.nat64lsn_aliaslink*, %struct.nat64lsn_aliaslink** %3, align 8
  %39 = getelementptr inbounds %struct.nat64lsn_aliaslink, %struct.nat64lsn_aliaslink* %38, i32 0, i32 1
  %40 = load %struct.TYPE_3__*, %struct.TYPE_3__** %39, align 8
  %41 = call i32 @ALIAS_UNLOCK(%struct.TYPE_3__* %40)
  %42 = load i32, i32* @nat64lsn_aliaslink_zone, align 4
  %43 = load %struct.nat64lsn_aliaslink*, %struct.nat64lsn_aliaslink** %3, align 8
  %44 = bitcast %struct.nat64lsn_aliaslink* %43 to %struct.nat64lsn_host*
  %45 = call i32 @uma_zfree(i32 %42, %struct.nat64lsn_host* %44)
  br label %4

46:                                               ; preds = %4
  %47 = load %struct.nat64lsn_host*, %struct.nat64lsn_host** %2, align 8
  %48 = call i32 @HOST_LOCK_DESTROY(%struct.nat64lsn_host* %47)
  %49 = load %struct.nat64lsn_host*, %struct.nat64lsn_host** %2, align 8
  %50 = getelementptr inbounds %struct.nat64lsn_host, %struct.nat64lsn_host* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  %52 = load i32, i32* @M_NAT64LSN, align 4
  %53 = call i32 @free(i32 %51, i32 %52)
  %54 = load i32, i32* @nat64lsn_host_zone, align 4
  %55 = load %struct.nat64lsn_host*, %struct.nat64lsn_host** %2, align 8
  %56 = call i32 @uma_zfree(i32 %54, %struct.nat64lsn_host* %55)
  ret void
}

declare dso_local i32 @CK_SLIST_EMPTY(i32*) #1

declare dso_local %struct.nat64lsn_host* @CK_SLIST_FIRST(i32*) #1

declare dso_local i32 @CK_SLIST_REMOVE_HEAD(i32*, i32) #1

declare dso_local i32 @ALIAS_LOCK(%struct.TYPE_3__*) #1

declare dso_local i32 @CK_SLIST_REMOVE(i32*, %struct.nat64lsn_host*, i32, i32) #1

declare dso_local i32 @ALIAS_UNLOCK(%struct.TYPE_3__*) #1

declare dso_local i32 @uma_zfree(i32, %struct.nat64lsn_host*) #1

declare dso_local i32 @HOST_LOCK_DESTROY(%struct.nat64lsn_host*) #1

declare dso_local i32 @free(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
