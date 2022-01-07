; ModuleID = '/home/carl/AnghaBench/freebsd/sys/nfs/extr_bootp_subr.c_bootpc_tag.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/nfs/extr_bootp_subr.c_bootpc_tag.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bootpc_tagcontext = type { i32, i64, i64, i64, i64, i8* }
%struct.bootp_packet = type { i8*, i64, i64 }

@OVERLOAD_FILE = common dso_local global i32 0, align 4
@OVERLOAD_SNAME = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (%struct.bootpc_tagcontext*, %struct.bootp_packet*, i32, i32)* @bootpc_tag to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @bootpc_tag(%struct.bootpc_tagcontext* %0, %struct.bootp_packet* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca %struct.bootpc_tagcontext*, align 8
  %7 = alloca %struct.bootp_packet*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.bootpc_tagcontext* %0, %struct.bootpc_tagcontext** %6, align 8
  store %struct.bootp_packet* %1, %struct.bootp_packet** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %10 = load %struct.bootpc_tagcontext*, %struct.bootpc_tagcontext** %6, align 8
  %11 = getelementptr inbounds %struct.bootpc_tagcontext, %struct.bootpc_tagcontext* %10, i32 0, i32 0
  store i32 0, i32* %11, align 8
  %12 = load %struct.bootpc_tagcontext*, %struct.bootpc_tagcontext** %6, align 8
  %13 = getelementptr inbounds %struct.bootpc_tagcontext, %struct.bootpc_tagcontext* %12, i32 0, i32 1
  store i64 0, i64* %13, align 8
  %14 = load %struct.bootpc_tagcontext*, %struct.bootpc_tagcontext** %6, align 8
  %15 = getelementptr inbounds %struct.bootpc_tagcontext, %struct.bootpc_tagcontext* %14, i32 0, i32 2
  store i64 0, i64* %15, align 8
  %16 = load %struct.bootpc_tagcontext*, %struct.bootpc_tagcontext** %6, align 8
  %17 = getelementptr inbounds %struct.bootpc_tagcontext, %struct.bootpc_tagcontext* %16, i32 0, i32 3
  store i64 0, i64* %17, align 8
  %18 = load %struct.bootpc_tagcontext*, %struct.bootpc_tagcontext** %6, align 8
  %19 = getelementptr inbounds %struct.bootpc_tagcontext, %struct.bootpc_tagcontext* %18, i32 0, i32 4
  store i64 0, i64* %19, align 8
  %20 = load %struct.bootp_packet*, %struct.bootp_packet** %7, align 8
  %21 = call i64 @bootpc_hascookie(%struct.bootp_packet* %20)
  %22 = icmp eq i64 %21, 0
  br i1 %22, label %23, label %24

23:                                               ; preds = %4
  store i8* null, i8** %5, align 8
  br label %101

24:                                               ; preds = %4
  %25 = load %struct.bootpc_tagcontext*, %struct.bootpc_tagcontext** %6, align 8
  %26 = load %struct.bootp_packet*, %struct.bootp_packet** %7, align 8
  %27 = getelementptr inbounds %struct.bootp_packet, %struct.bootp_packet* %26, i32 0, i32 0
  %28 = load i8*, i8** %27, align 8
  %29 = getelementptr inbounds i8, i8* %28, i64 4
  %30 = load %struct.bootp_packet*, %struct.bootp_packet** %7, align 8
  %31 = bitcast %struct.bootp_packet* %30 to i8*
  %32 = load i32, i32* %8, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds i8, i8* %31, i64 %33
  %35 = load %struct.bootp_packet*, %struct.bootp_packet** %7, align 8
  %36 = getelementptr inbounds %struct.bootp_packet, %struct.bootp_packet* %35, i32 0, i32 0
  %37 = load i8*, i8** %36, align 8
  %38 = getelementptr inbounds i8, i8* %37, i64 4
  %39 = ptrtoint i8* %34 to i64
  %40 = ptrtoint i8* %38 to i64
  %41 = sub i64 %39, %40
  %42 = trunc i64 %41 to i32
  %43 = load i32, i32* %9, align 4
  %44 = call i32 @bootpc_tag_helper(%struct.bootpc_tagcontext* %25, i8* %29, i32 %42, i32 %43)
  %45 = load %struct.bootpc_tagcontext*, %struct.bootpc_tagcontext** %6, align 8
  %46 = getelementptr inbounds %struct.bootpc_tagcontext, %struct.bootpc_tagcontext* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = load i32, i32* @OVERLOAD_FILE, align 4
  %49 = and i32 %47, %48
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %59

51:                                               ; preds = %24
  %52 = load %struct.bootpc_tagcontext*, %struct.bootpc_tagcontext** %6, align 8
  %53 = load %struct.bootp_packet*, %struct.bootp_packet** %7, align 8
  %54 = getelementptr inbounds %struct.bootp_packet, %struct.bootp_packet* %53, i32 0, i32 2
  %55 = load i64, i64* %54, align 8
  %56 = inttoptr i64 %55 to i8*
  %57 = load i32, i32* %9, align 4
  %58 = call i32 @bootpc_tag_helper(%struct.bootpc_tagcontext* %52, i8* %56, i32 8, i32 %57)
  br label %59

59:                                               ; preds = %51, %24
  %60 = load %struct.bootpc_tagcontext*, %struct.bootpc_tagcontext** %6, align 8
  %61 = getelementptr inbounds %struct.bootpc_tagcontext, %struct.bootpc_tagcontext* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 8
  %63 = load i32, i32* @OVERLOAD_SNAME, align 4
  %64 = and i32 %62, %63
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %74

66:                                               ; preds = %59
  %67 = load %struct.bootpc_tagcontext*, %struct.bootpc_tagcontext** %6, align 8
  %68 = load %struct.bootp_packet*, %struct.bootp_packet** %7, align 8
  %69 = getelementptr inbounds %struct.bootp_packet, %struct.bootp_packet* %68, i32 0, i32 1
  %70 = load i64, i64* %69, align 8
  %71 = inttoptr i64 %70 to i8*
  %72 = load i32, i32* %9, align 4
  %73 = call i32 @bootpc_tag_helper(%struct.bootpc_tagcontext* %67, i8* %71, i32 8, i32 %72)
  br label %74

74:                                               ; preds = %66, %59
  %75 = load %struct.bootpc_tagcontext*, %struct.bootpc_tagcontext** %6, align 8
  %76 = getelementptr inbounds %struct.bootpc_tagcontext, %struct.bootpc_tagcontext* %75, i32 0, i32 1
  %77 = load i64, i64* %76, align 8
  %78 = icmp ne i64 %77, 0
  br i1 %78, label %89, label %79

79:                                               ; preds = %74
  %80 = load %struct.bootpc_tagcontext*, %struct.bootpc_tagcontext** %6, align 8
  %81 = getelementptr inbounds %struct.bootpc_tagcontext, %struct.bootpc_tagcontext* %80, i32 0, i32 2
  %82 = load i64, i64* %81, align 8
  %83 = icmp ne i64 %82, 0
  br i1 %83, label %89, label %84

84:                                               ; preds = %79
  %85 = load %struct.bootpc_tagcontext*, %struct.bootpc_tagcontext** %6, align 8
  %86 = getelementptr inbounds %struct.bootpc_tagcontext, %struct.bootpc_tagcontext* %85, i32 0, i32 3
  %87 = load i64, i64* %86, align 8
  %88 = icmp eq i64 %87, 0
  br i1 %88, label %89, label %90

89:                                               ; preds = %84, %79, %74
  store i8* null, i8** %5, align 8
  br label %101

90:                                               ; preds = %84
  %91 = load %struct.bootpc_tagcontext*, %struct.bootpc_tagcontext** %6, align 8
  %92 = getelementptr inbounds %struct.bootpc_tagcontext, %struct.bootpc_tagcontext* %91, i32 0, i32 5
  %93 = load i8*, i8** %92, align 8
  %94 = load %struct.bootpc_tagcontext*, %struct.bootpc_tagcontext** %6, align 8
  %95 = getelementptr inbounds %struct.bootpc_tagcontext, %struct.bootpc_tagcontext* %94, i32 0, i32 4
  %96 = load i64, i64* %95, align 8
  %97 = getelementptr inbounds i8, i8* %93, i64 %96
  store i8 0, i8* %97, align 1
  %98 = load %struct.bootpc_tagcontext*, %struct.bootpc_tagcontext** %6, align 8
  %99 = getelementptr inbounds %struct.bootpc_tagcontext, %struct.bootpc_tagcontext* %98, i32 0, i32 5
  %100 = load i8*, i8** %99, align 8
  store i8* %100, i8** %5, align 8
  br label %101

101:                                              ; preds = %90, %89, %23
  %102 = load i8*, i8** %5, align 8
  ret i8* %102
}

declare dso_local i64 @bootpc_hascookie(%struct.bootp_packet*) #1

declare dso_local i32 @bootpc_tag_helper(%struct.bootpc_tagcontext*, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
