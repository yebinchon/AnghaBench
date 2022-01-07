; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/bsnmpd/modules/snmp_netgraph/extr_snmp_netgraph.c_find_hook.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/bsnmpd/modules/snmp_netgraph/extr_snmp_netgraph.c_find_hook.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.linkinfo = type { i32 }
%struct.ng_mesg = type { i64 }
%struct.hooklist = type { %struct.linkinfo*, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }

@NGM_GENERIC_COOKIE = common dso_local global i32 0, align 4
@NGM_LISTHOOKS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32*, i64, %struct.linkinfo*)* @find_hook to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @find_hook(i32 %0, i32* %1, i64 %2, %struct.linkinfo* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.linkinfo*, align 8
  %10 = alloca %struct.ng_mesg*, align 8
  %11 = alloca %struct.hooklist*, align 8
  %12 = alloca i64, align 8
  store i32 %0, i32* %6, align 4
  store i32* %1, i32** %7, align 8
  store i64 %2, i64* %8, align 8
  store %struct.linkinfo* %3, %struct.linkinfo** %9, align 8
  %13 = load i32, i32* %6, align 4
  %14 = load i32, i32* @NGM_GENERIC_COOKIE, align 4
  %15 = load i32, i32* @NGM_LISTHOOKS, align 4
  %16 = call %struct.ng_mesg* @ng_dialog_id(i32 %13, i32 %14, i32 %15, i32* null, i32 0)
  store %struct.ng_mesg* %16, %struct.ng_mesg** %10, align 8
  %17 = icmp eq %struct.ng_mesg* %16, null
  br i1 %17, label %18, label %19

18:                                               ; preds = %4
  store i32 -1, i32* %5, align 4
  br label %73

19:                                               ; preds = %4
  %20 = load %struct.ng_mesg*, %struct.ng_mesg** %10, align 8
  %21 = getelementptr inbounds %struct.ng_mesg, %struct.ng_mesg* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = inttoptr i64 %22 to i8*
  %24 = bitcast i8* %23 to %struct.hooklist*
  store %struct.hooklist* %24, %struct.hooklist** %11, align 8
  store i64 0, i64* %12, align 8
  br label %25

25:                                               ; preds = %67, %19
  %26 = load i64, i64* %12, align 8
  %27 = load %struct.hooklist*, %struct.hooklist** %11, align 8
  %28 = getelementptr inbounds %struct.hooklist, %struct.hooklist* %27, i32 0, i32 1
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = icmp ult i64 %26, %30
  br i1 %31, label %32, label %70

32:                                               ; preds = %25
  %33 = load %struct.hooklist*, %struct.hooklist** %11, align 8
  %34 = getelementptr inbounds %struct.hooklist, %struct.hooklist* %33, i32 0, i32 0
  %35 = load %struct.linkinfo*, %struct.linkinfo** %34, align 8
  %36 = load i64, i64* %12, align 8
  %37 = getelementptr inbounds %struct.linkinfo, %struct.linkinfo* %35, i64 %36
  %38 = getelementptr inbounds %struct.linkinfo, %struct.linkinfo* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = call i64 @strlen(i32 %39)
  %41 = load i64, i64* %8, align 8
  %42 = icmp eq i64 %40, %41
  br i1 %42, label %43, label %66

43:                                               ; preds = %32
  %44 = load %struct.hooklist*, %struct.hooklist** %11, align 8
  %45 = getelementptr inbounds %struct.hooklist, %struct.hooklist* %44, i32 0, i32 0
  %46 = load %struct.linkinfo*, %struct.linkinfo** %45, align 8
  %47 = load i64, i64* %12, align 8
  %48 = getelementptr inbounds %struct.linkinfo, %struct.linkinfo* %46, i64 %47
  %49 = getelementptr inbounds %struct.linkinfo, %struct.linkinfo* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = load i32*, i32** %7, align 8
  %52 = load i64, i64* %8, align 8
  %53 = call i64 @strncmp(i32 %50, i32* %51, i64 %52)
  %54 = icmp eq i64 %53, 0
  br i1 %54, label %55, label %66

55:                                               ; preds = %43
  %56 = load %struct.linkinfo*, %struct.linkinfo** %9, align 8
  %57 = load %struct.hooklist*, %struct.hooklist** %11, align 8
  %58 = getelementptr inbounds %struct.hooklist, %struct.hooklist* %57, i32 0, i32 0
  %59 = load %struct.linkinfo*, %struct.linkinfo** %58, align 8
  %60 = load i64, i64* %12, align 8
  %61 = getelementptr inbounds %struct.linkinfo, %struct.linkinfo* %59, i64 %60
  %62 = bitcast %struct.linkinfo* %56 to i8*
  %63 = bitcast %struct.linkinfo* %61 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %62, i8* align 4 %63, i64 4, i1 false)
  %64 = load %struct.ng_mesg*, %struct.ng_mesg** %10, align 8
  %65 = call i32 @free(%struct.ng_mesg* %64)
  store i32 0, i32* %5, align 4
  br label %73

66:                                               ; preds = %43, %32
  br label %67

67:                                               ; preds = %66
  %68 = load i64, i64* %12, align 8
  %69 = add i64 %68, 1
  store i64 %69, i64* %12, align 8
  br label %25

70:                                               ; preds = %25
  %71 = load %struct.ng_mesg*, %struct.ng_mesg** %10, align 8
  %72 = call i32 @free(%struct.ng_mesg* %71)
  store i32 -1, i32* %5, align 4
  br label %73

73:                                               ; preds = %70, %55, %18
  %74 = load i32, i32* %5, align 4
  ret i32 %74
}

declare dso_local %struct.ng_mesg* @ng_dialog_id(i32, i32, i32, i32*, i32) #1

declare dso_local i64 @strlen(i32) #1

declare dso_local i64 @strncmp(i32, i32*, i64) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @free(%struct.ng_mesg*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
