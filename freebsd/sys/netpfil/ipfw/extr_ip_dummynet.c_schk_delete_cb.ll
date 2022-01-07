; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netpfil/ipfw/extr_ip_dummynet.c_schk_delete_cb.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netpfil/ipfw/extr_ip_dummynet.c_schk_delete_cb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32 }
%struct.dn_schk = type { i8*, %struct.TYPE_5__*, i32*, %struct.TYPE_4__, i32 }
%struct.TYPE_5__ = type { i32 (%struct.dn_schk*)* }
%struct.TYPE_4__ = type { i32, i32 }

@DN_DESTROY = common dso_local global i32 0, align 4
@DN_HAVE_MASK = common dso_local global i32 0, align 4
@M_DUMMYNET = common dso_local global i32 0, align 4
@dn_cfg = common dso_local global %struct.TYPE_6__ zeroinitializer, align 4
@DNHT_SCAN_DEL = common dso_local global i32 0, align 4
@DN_DELETE_FS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i8*)* @schk_delete_cb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @schk_delete_cb(i8* %0, i8* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.dn_schk*, align 8
  store i8* %0, i8** %3, align 8
  store i8* %1, i8** %4, align 8
  %6 = load i8*, i8** %3, align 8
  %7 = bitcast i8* %6 to %struct.dn_schk*
  store %struct.dn_schk* %7, %struct.dn_schk** %5, align 8
  %8 = load %struct.dn_schk*, %struct.dn_schk** %5, align 8
  %9 = getelementptr inbounds %struct.dn_schk, %struct.dn_schk* %8, i32 0, i32 4
  %10 = load i8*, i8** %4, align 8
  %11 = icmp ne i8* %10, null
  br i1 %11, label %12, label %14

12:                                               ; preds = %2
  %13 = load i32, i32* @DN_DESTROY, align 4
  br label %15

14:                                               ; preds = %2
  br label %15

15:                                               ; preds = %14, %12
  %16 = phi i32 [ %13, %12 ], [ 0, %14 ]
  %17 = call i32 @fsk_detach_list(i32* %9, i32 %16)
  %18 = load %struct.dn_schk*, %struct.dn_schk** %5, align 8
  %19 = getelementptr inbounds %struct.dn_schk, %struct.dn_schk* %18, i32 0, i32 3
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = load i32, i32* @DN_HAVE_MASK, align 4
  %23 = and i32 %21, %22
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %34

25:                                               ; preds = %15
  %26 = load %struct.dn_schk*, %struct.dn_schk** %5, align 8
  %27 = getelementptr inbounds %struct.dn_schk, %struct.dn_schk* %26, i32 0, i32 2
  %28 = load i32*, i32** %27, align 8
  %29 = call i32 @dn_ht_scan(i32* %28, i32 (i32*, i32*)* @si_destroy, i32* null)
  %30 = load %struct.dn_schk*, %struct.dn_schk** %5, align 8
  %31 = getelementptr inbounds %struct.dn_schk, %struct.dn_schk* %30, i32 0, i32 2
  %32 = load i32*, i32** %31, align 8
  %33 = call i32 @dn_ht_free(i32* %32, i32 0)
  br label %45

34:                                               ; preds = %15
  %35 = load %struct.dn_schk*, %struct.dn_schk** %5, align 8
  %36 = getelementptr inbounds %struct.dn_schk, %struct.dn_schk* %35, i32 0, i32 2
  %37 = load i32*, i32** %36, align 8
  %38 = icmp ne i32* %37, null
  br i1 %38, label %39, label %44

39:                                               ; preds = %34
  %40 = load %struct.dn_schk*, %struct.dn_schk** %5, align 8
  %41 = getelementptr inbounds %struct.dn_schk, %struct.dn_schk* %40, i32 0, i32 2
  %42 = load i32*, i32** %41, align 8
  %43 = call i32 @si_destroy(i32* %42, i32* null)
  br label %44

44:                                               ; preds = %39, %34
  br label %45

45:                                               ; preds = %44, %25
  %46 = load %struct.dn_schk*, %struct.dn_schk** %5, align 8
  %47 = getelementptr inbounds %struct.dn_schk, %struct.dn_schk* %46, i32 0, i32 0
  %48 = load i8*, i8** %47, align 8
  %49 = icmp ne i8* %48, null
  br i1 %49, label %50, label %58

50:                                               ; preds = %45
  %51 = load %struct.dn_schk*, %struct.dn_schk** %5, align 8
  %52 = getelementptr inbounds %struct.dn_schk, %struct.dn_schk* %51, i32 0, i32 0
  %53 = load i8*, i8** %52, align 8
  %54 = load i32, i32* @M_DUMMYNET, align 4
  %55 = call i32 @free(i8* %53, i32 %54)
  %56 = load %struct.dn_schk*, %struct.dn_schk** %5, align 8
  %57 = getelementptr inbounds %struct.dn_schk, %struct.dn_schk* %56, i32 0, i32 0
  store i8* null, i8** %57, align 8
  br label %58

58:                                               ; preds = %50, %45
  %59 = load %struct.dn_schk*, %struct.dn_schk** %5, align 8
  %60 = getelementptr inbounds %struct.dn_schk, %struct.dn_schk* %59, i32 0, i32 2
  store i32* null, i32** %60, align 8
  %61 = load %struct.dn_schk*, %struct.dn_schk** %5, align 8
  %62 = getelementptr inbounds %struct.dn_schk, %struct.dn_schk* %61, i32 0, i32 1
  %63 = load %struct.TYPE_5__*, %struct.TYPE_5__** %62, align 8
  %64 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %63, i32 0, i32 0
  %65 = load i32 (%struct.dn_schk*)*, i32 (%struct.dn_schk*)** %64, align 8
  %66 = icmp ne i32 (%struct.dn_schk*)* %65, null
  br i1 %66, label %67, label %75

67:                                               ; preds = %58
  %68 = load %struct.dn_schk*, %struct.dn_schk** %5, align 8
  %69 = getelementptr inbounds %struct.dn_schk, %struct.dn_schk* %68, i32 0, i32 1
  %70 = load %struct.TYPE_5__*, %struct.TYPE_5__** %69, align 8
  %71 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %70, i32 0, i32 0
  %72 = load i32 (%struct.dn_schk*)*, i32 (%struct.dn_schk*)** %71, align 8
  %73 = load %struct.dn_schk*, %struct.dn_schk** %5, align 8
  %74 = call i32 %72(%struct.dn_schk* %73)
  br label %75

75:                                               ; preds = %67, %58
  %76 = load %struct.dn_schk*, %struct.dn_schk** %5, align 8
  %77 = call i32 @bzero(%struct.dn_schk* %76, i32 40)
  %78 = load i8*, i8** %3, align 8
  %79 = load i32, i32* @M_DUMMYNET, align 4
  %80 = call i32 @free(i8* %78, i32 %79)
  %81 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @dn_cfg, i32 0, i32 0), align 4
  %82 = add nsw i32 %81, -1
  store i32 %82, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @dn_cfg, i32 0, i32 0), align 4
  %83 = load i32, i32* @DNHT_SCAN_DEL, align 4
  ret i32 %83
}

declare dso_local i32 @fsk_detach_list(i32*, i32) #1

declare dso_local i32 @dn_ht_scan(i32*, i32 (i32*, i32*)*, i32*) #1

declare dso_local i32 @si_destroy(i32*, i32*) #1

declare dso_local i32 @dn_ht_free(i32*, i32) #1

declare dso_local i32 @free(i8*, i32) #1

declare dso_local i32 @bzero(%struct.dn_schk*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
