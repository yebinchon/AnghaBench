; ModuleID = '/home/carl/AnghaBench/freebsd/sys/geom/part/extr_g_part_ldm.c_ldm_privhdr_parse.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/geom/part/extr_g_part_ldm.c_ldm_privhdr_parse.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.g_consumer = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.ldm_privhdr = type { i8*, i8*, i8**, i8*, i8*, i8*, i8*, i32, i32, i32 }

@LDM_PH_VERSION_OFF = common dso_local global i32 0, align 4
@LDM_VERSION_2K = common dso_local global i32 0, align 4
@LDM_VERSION_VISTA = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"%s: unsupported LDM version %u.%u\00", align 1
@ENXIO = common dso_local global i32 0, align 4
@LDM_PH_DISKGUID_OFF = common dso_local global i32 0, align 4
@LDM_PH_DGGUID_OFF = common dso_local global i32 0, align 4
@LDM_PH_DGNAME_OFF = common dso_local global i32 0, align 4
@LDM_PH_START_OFF = common dso_local global i32 0, align 4
@LDM_PH_SIZE_OFF = common dso_local global i32 0, align 4
@LDM_PH_DB_OFF = common dso_local global i32 0, align 4
@LDM_PH_DBSIZE_OFF = common dso_local global i32 0, align 4
@LDM_PH_TH1_OFF = common dso_local global i32 0, align 4
@LDM_PH_TH2_OFF = common dso_local global i32 0, align 4
@LDM_PH_CONFSIZE_OFF = common dso_local global i32 0, align 4
@LDM_PH_LOGSIZE_OFF = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.g_consumer*, %struct.ldm_privhdr*, i32*)* @ldm_privhdr_parse to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ldm_privhdr_parse(%struct.g_consumer* %0, %struct.ldm_privhdr* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.g_consumer*, align 8
  %6 = alloca %struct.ldm_privhdr*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.g_consumer* %0, %struct.g_consumer** %5, align 8
  store %struct.ldm_privhdr* %1, %struct.ldm_privhdr** %6, align 8
  store i32* %2, i32** %7, align 8
  %10 = load %struct.ldm_privhdr*, %struct.ldm_privhdr** %6, align 8
  %11 = call i32 @memset(%struct.ldm_privhdr* %10, i32 0, i32 72)
  %12 = load i32*, i32** %7, align 8
  %13 = load i32, i32* @LDM_PH_VERSION_OFF, align 4
  %14 = sext i32 %13 to i64
  %15 = getelementptr inbounds i32, i32* %12, i64 %14
  %16 = call i32 @be32dec(i32* %15)
  store i32 %16, i32* %8, align 4
  %17 = load i32, i32* %8, align 4
  %18 = load i32, i32* @LDM_VERSION_2K, align 4
  %19 = icmp ne i32 %17, %18
  br i1 %19, label %20, label %36

20:                                               ; preds = %3
  %21 = load i32, i32* %8, align 4
  %22 = load i32, i32* @LDM_VERSION_VISTA, align 4
  %23 = icmp ne i32 %21, %22
  br i1 %23, label %24, label %36

24:                                               ; preds = %20
  %25 = load %struct.g_consumer*, %struct.g_consumer** %5, align 8
  %26 = getelementptr inbounds %struct.g_consumer, %struct.g_consumer* %25, i32 0, i32 0
  %27 = load %struct.TYPE_2__*, %struct.TYPE_2__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = load i32, i32* %8, align 4
  %31 = ashr i32 %30, 16
  %32 = load i32, i32* %8, align 4
  %33 = and i32 %32, 65535
  %34 = call i32 @LDM_DEBUG(i32 0, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), i32 %29, i32 %31, i32 %33)
  %35 = load i32, i32* @ENXIO, align 4
  store i32 %35, i32* %4, align 4
  br label %129

36:                                               ; preds = %20, %3
  %37 = load i32*, i32** %7, align 8
  %38 = load i32, i32* @LDM_PH_DISKGUID_OFF, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds i32, i32* %37, i64 %39
  %41 = load %struct.ldm_privhdr*, %struct.ldm_privhdr** %6, align 8
  %42 = getelementptr inbounds %struct.ldm_privhdr, %struct.ldm_privhdr* %41, i32 0, i32 9
  %43 = call i32 @parse_uuid(i32* %40, i32* %42)
  store i32 %43, i32* %9, align 4
  %44 = load i32, i32* %9, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %48

46:                                               ; preds = %36
  %47 = load i32, i32* %9, align 4
  store i32 %47, i32* %4, align 4
  br label %129

48:                                               ; preds = %36
  %49 = load i32*, i32** %7, align 8
  %50 = load i32, i32* @LDM_PH_DGGUID_OFF, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds i32, i32* %49, i64 %51
  %53 = load %struct.ldm_privhdr*, %struct.ldm_privhdr** %6, align 8
  %54 = getelementptr inbounds %struct.ldm_privhdr, %struct.ldm_privhdr* %53, i32 0, i32 8
  %55 = call i32 @parse_uuid(i32* %52, i32* %54)
  store i32 %55, i32* %9, align 4
  %56 = load i32, i32* %9, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %60

58:                                               ; preds = %48
  %59 = load i32, i32* %9, align 4
  store i32 %59, i32* %4, align 4
  br label %129

60:                                               ; preds = %48
  %61 = load %struct.ldm_privhdr*, %struct.ldm_privhdr** %6, align 8
  %62 = getelementptr inbounds %struct.ldm_privhdr, %struct.ldm_privhdr* %61, i32 0, i32 7
  %63 = load i32, i32* %62, align 8
  %64 = load i32*, i32** %7, align 8
  %65 = load i32, i32* @LDM_PH_DGNAME_OFF, align 4
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds i32, i32* %64, i64 %66
  %68 = call i32 @strncpy(i32 %63, i32* %67, i32 4)
  %69 = load i32*, i32** %7, align 8
  %70 = load i32, i32* @LDM_PH_START_OFF, align 4
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds i32, i32* %69, i64 %71
  %73 = call i8* @be64dec(i32* %72)
  %74 = load %struct.ldm_privhdr*, %struct.ldm_privhdr** %6, align 8
  %75 = getelementptr inbounds %struct.ldm_privhdr, %struct.ldm_privhdr* %74, i32 0, i32 6
  store i8* %73, i8** %75, align 8
  %76 = load i32*, i32** %7, align 8
  %77 = load i32, i32* @LDM_PH_SIZE_OFF, align 4
  %78 = sext i32 %77 to i64
  %79 = getelementptr inbounds i32, i32* %76, i64 %78
  %80 = call i8* @be64dec(i32* %79)
  %81 = load %struct.ldm_privhdr*, %struct.ldm_privhdr** %6, align 8
  %82 = getelementptr inbounds %struct.ldm_privhdr, %struct.ldm_privhdr* %81, i32 0, i32 5
  store i8* %80, i8** %82, align 8
  %83 = load i32*, i32** %7, align 8
  %84 = load i32, i32* @LDM_PH_DB_OFF, align 4
  %85 = sext i32 %84 to i64
  %86 = getelementptr inbounds i32, i32* %83, i64 %85
  %87 = call i8* @be64dec(i32* %86)
  %88 = load %struct.ldm_privhdr*, %struct.ldm_privhdr** %6, align 8
  %89 = getelementptr inbounds %struct.ldm_privhdr, %struct.ldm_privhdr* %88, i32 0, i32 4
  store i8* %87, i8** %89, align 8
  %90 = load i32*, i32** %7, align 8
  %91 = load i32, i32* @LDM_PH_DBSIZE_OFF, align 4
  %92 = sext i32 %91 to i64
  %93 = getelementptr inbounds i32, i32* %90, i64 %92
  %94 = call i8* @be64dec(i32* %93)
  %95 = load %struct.ldm_privhdr*, %struct.ldm_privhdr** %6, align 8
  %96 = getelementptr inbounds %struct.ldm_privhdr, %struct.ldm_privhdr* %95, i32 0, i32 3
  store i8* %94, i8** %96, align 8
  %97 = load i32*, i32** %7, align 8
  %98 = load i32, i32* @LDM_PH_TH1_OFF, align 4
  %99 = sext i32 %98 to i64
  %100 = getelementptr inbounds i32, i32* %97, i64 %99
  %101 = call i8* @be64dec(i32* %100)
  %102 = load %struct.ldm_privhdr*, %struct.ldm_privhdr** %6, align 8
  %103 = getelementptr inbounds %struct.ldm_privhdr, %struct.ldm_privhdr* %102, i32 0, i32 2
  %104 = load i8**, i8*** %103, align 8
  %105 = getelementptr inbounds i8*, i8** %104, i64 0
  store i8* %101, i8** %105, align 8
  %106 = load i32*, i32** %7, align 8
  %107 = load i32, i32* @LDM_PH_TH2_OFF, align 4
  %108 = sext i32 %107 to i64
  %109 = getelementptr inbounds i32, i32* %106, i64 %108
  %110 = call i8* @be64dec(i32* %109)
  %111 = load %struct.ldm_privhdr*, %struct.ldm_privhdr** %6, align 8
  %112 = getelementptr inbounds %struct.ldm_privhdr, %struct.ldm_privhdr* %111, i32 0, i32 2
  %113 = load i8**, i8*** %112, align 8
  %114 = getelementptr inbounds i8*, i8** %113, i64 1
  store i8* %110, i8** %114, align 8
  %115 = load i32*, i32** %7, align 8
  %116 = load i32, i32* @LDM_PH_CONFSIZE_OFF, align 4
  %117 = sext i32 %116 to i64
  %118 = getelementptr inbounds i32, i32* %115, i64 %117
  %119 = call i8* @be64dec(i32* %118)
  %120 = load %struct.ldm_privhdr*, %struct.ldm_privhdr** %6, align 8
  %121 = getelementptr inbounds %struct.ldm_privhdr, %struct.ldm_privhdr* %120, i32 0, i32 1
  store i8* %119, i8** %121, align 8
  %122 = load i32*, i32** %7, align 8
  %123 = load i32, i32* @LDM_PH_LOGSIZE_OFF, align 4
  %124 = sext i32 %123 to i64
  %125 = getelementptr inbounds i32, i32* %122, i64 %124
  %126 = call i8* @be64dec(i32* %125)
  %127 = load %struct.ldm_privhdr*, %struct.ldm_privhdr** %6, align 8
  %128 = getelementptr inbounds %struct.ldm_privhdr, %struct.ldm_privhdr* %127, i32 0, i32 0
  store i8* %126, i8** %128, align 8
  store i32 0, i32* %4, align 4
  br label %129

129:                                              ; preds = %60, %58, %46, %24
  %130 = load i32, i32* %4, align 4
  ret i32 %130
}

declare dso_local i32 @memset(%struct.ldm_privhdr*, i32, i32) #1

declare dso_local i32 @be32dec(i32*) #1

declare dso_local i32 @LDM_DEBUG(i32, i8*, i32, i32, i32) #1

declare dso_local i32 @parse_uuid(i32*, i32*) #1

declare dso_local i32 @strncpy(i32, i32*, i32) #1

declare dso_local i8* @be64dec(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
