; ModuleID = '/home/carl/AnghaBench/freebsd/sys/geom/raid/extr_md_sii.c_sii_meta_write_spare.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/geom/raid/extr_md_sii.c_sii_meta_write_spare.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.g_consumer = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i32 }
%struct.sii_raid_conf = type { i32, i32, i32, i32, i32, i8*, i32, i8**, i64 }

@M_MD_SII = common dso_local global i32 0, align 4
@M_WAITOK = common dso_local global i32 0, align 4
@M_ZERO = common dso_local global i32 0, align 4
@SII_T_SPARE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.g_consumer*)* @sii_meta_write_spare to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sii_meta_write_spare(%struct.g_consumer* %0) #0 {
  %2 = alloca %struct.g_consumer*, align 8
  %3 = alloca %struct.sii_raid_conf*, align 8
  %4 = alloca i32, align 4
  store %struct.g_consumer* %0, %struct.g_consumer** %2, align 8
  %5 = load i32, i32* @M_MD_SII, align 4
  %6 = load i32, i32* @M_WAITOK, align 4
  %7 = load i32, i32* @M_ZERO, align 4
  %8 = or i32 %6, %7
  %9 = call %struct.sii_raid_conf* @malloc(i32 56, i32 %5, i32 %8)
  store %struct.sii_raid_conf* %9, %struct.sii_raid_conf** %3, align 8
  %10 = load %struct.g_consumer*, %struct.g_consumer** %2, align 8
  %11 = getelementptr inbounds %struct.g_consumer, %struct.g_consumer* %10, i32 0, i32 0
  %12 = load %struct.TYPE_2__*, %struct.TYPE_2__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = load %struct.g_consumer*, %struct.g_consumer** %2, align 8
  %16 = getelementptr inbounds %struct.g_consumer, %struct.g_consumer* %15, i32 0, i32 0
  %17 = load %struct.TYPE_2__*, %struct.TYPE_2__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = sdiv i32 %14, %19
  %21 = sub nsw i32 %20, 2048
  %22 = load %struct.sii_raid_conf*, %struct.sii_raid_conf** %3, align 8
  %23 = getelementptr inbounds %struct.sii_raid_conf, %struct.sii_raid_conf* %22, i32 0, i32 0
  store i32 %21, i32* %23, align 8
  %24 = load %struct.sii_raid_conf*, %struct.sii_raid_conf** %3, align 8
  %25 = getelementptr inbounds %struct.sii_raid_conf, %struct.sii_raid_conf* %24, i32 0, i32 1
  store i32 4245, i32* %25, align 4
  %26 = load %struct.sii_raid_conf*, %struct.sii_raid_conf** %3, align 8
  %27 = getelementptr inbounds %struct.sii_raid_conf, %struct.sii_raid_conf* %26, i32 0, i32 8
  store i64 0, i64* %27, align 8
  %28 = load %struct.sii_raid_conf*, %struct.sii_raid_conf** %3, align 8
  %29 = getelementptr inbounds %struct.sii_raid_conf, %struct.sii_raid_conf* %28, i32 0, i32 2
  store i32 2, i32* %29, align 8
  %30 = call i8* (...) @arc4random()
  %31 = load %struct.sii_raid_conf*, %struct.sii_raid_conf** %3, align 8
  %32 = getelementptr inbounds %struct.sii_raid_conf, %struct.sii_raid_conf* %31, i32 0, i32 7
  %33 = load i8**, i8*** %32, align 8
  %34 = getelementptr inbounds i8*, i8** %33, i64 0
  store i8* %30, i8** %34, align 8
  %35 = call i8* (...) @arc4random()
  %36 = load %struct.sii_raid_conf*, %struct.sii_raid_conf** %3, align 8
  %37 = getelementptr inbounds %struct.sii_raid_conf, %struct.sii_raid_conf* %36, i32 0, i32 7
  %38 = load i8**, i8*** %37, align 8
  %39 = getelementptr inbounds i8*, i8** %38, i64 1
  store i8* %35, i8** %39, align 8
  %40 = call i8* (...) @arc4random()
  %41 = load %struct.sii_raid_conf*, %struct.sii_raid_conf** %3, align 8
  %42 = getelementptr inbounds %struct.sii_raid_conf, %struct.sii_raid_conf* %41, i32 0, i32 7
  %43 = load i8**, i8*** %42, align 8
  %44 = getelementptr inbounds i8*, i8** %43, i64 2
  store i8* %40, i8** %44, align 8
  %45 = call i8* (...) @arc4random()
  %46 = load %struct.sii_raid_conf*, %struct.sii_raid_conf** %3, align 8
  %47 = getelementptr inbounds %struct.sii_raid_conf, %struct.sii_raid_conf* %46, i32 0, i32 7
  %48 = load i8**, i8*** %47, align 8
  %49 = getelementptr inbounds i8*, i8** %48, i64 3
  store i8* %45, i8** %49, align 8
  %50 = call i8* (...) @arc4random()
  %51 = load %struct.sii_raid_conf*, %struct.sii_raid_conf** %3, align 8
  %52 = getelementptr inbounds %struct.sii_raid_conf, %struct.sii_raid_conf* %51, i32 0, i32 7
  %53 = load i8**, i8*** %52, align 8
  %54 = getelementptr inbounds i8*, i8** %53, i64 4
  store i8* %50, i8** %54, align 8
  %55 = call i8* (...) @arc4random()
  %56 = load %struct.sii_raid_conf*, %struct.sii_raid_conf** %3, align 8
  %57 = getelementptr inbounds %struct.sii_raid_conf, %struct.sii_raid_conf* %56, i32 0, i32 7
  %58 = load i8**, i8*** %57, align 8
  %59 = getelementptr inbounds i8*, i8** %58, i64 5
  store i8* %55, i8** %59, align 8
  %60 = load i32, i32* @SII_T_SPARE, align 4
  %61 = load %struct.sii_raid_conf*, %struct.sii_raid_conf** %3, align 8
  %62 = getelementptr inbounds %struct.sii_raid_conf, %struct.sii_raid_conf* %61, i32 0, i32 6
  store i32 %60, i32* %62, align 8
  %63 = load %struct.sii_raid_conf*, %struct.sii_raid_conf** %3, align 8
  %64 = getelementptr inbounds %struct.sii_raid_conf, %struct.sii_raid_conf* %63, i32 0, i32 3
  store i32 1, i32* %64, align 4
  %65 = load %struct.sii_raid_conf*, %struct.sii_raid_conf** %3, align 8
  %66 = getelementptr inbounds %struct.sii_raid_conf, %struct.sii_raid_conf* %65, i32 0, i32 4
  store i32 255, i32* %66, align 8
  %67 = call i8* (...) @arc4random()
  %68 = load %struct.sii_raid_conf*, %struct.sii_raid_conf** %3, align 8
  %69 = getelementptr inbounds %struct.sii_raid_conf, %struct.sii_raid_conf* %68, i32 0, i32 5
  store i8* %67, i8** %69, align 8
  %70 = load %struct.g_consumer*, %struct.g_consumer** %2, align 8
  %71 = load %struct.sii_raid_conf*, %struct.sii_raid_conf** %3, align 8
  %72 = call i32 @sii_meta_write(%struct.g_consumer* %70, %struct.sii_raid_conf* %71)
  store i32 %72, i32* %4, align 4
  %73 = load %struct.sii_raid_conf*, %struct.sii_raid_conf** %3, align 8
  %74 = load i32, i32* @M_MD_SII, align 4
  %75 = call i32 @free(%struct.sii_raid_conf* %73, i32 %74)
  %76 = load i32, i32* %4, align 4
  ret i32 %76
}

declare dso_local %struct.sii_raid_conf* @malloc(i32, i32, i32) #1

declare dso_local i8* @arc4random(...) #1

declare dso_local i32 @sii_meta_write(%struct.g_consumer*, %struct.sii_raid_conf*) #1

declare dso_local i32 @free(%struct.sii_raid_conf*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
