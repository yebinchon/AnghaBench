; ModuleID = '/home/carl/AnghaBench/freebsd/tools/tools/netmap/extr_nmreplay.c_nmreplay_main.c'
source_filename = "/home/carl/AnghaBench/freebsd/tools/tools/netmap/extr_nmreplay.c_nmreplay_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pipe_args = type { i32*, i32, %struct._qs }
%struct._qs = type { i8*, i32*, i32, i32 }

@.str = private unnamed_addr constant [23 x i8] c"unable to read file %s\00", align 1
@.str.1 = private unnamed_addr constant [25 x i8] c"cannot open netmap on %s\00", align 1
@do_abort = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [24 x i8] c"prepare to send packets\00", align 1
@.str.3 = private unnamed_addr constant [17 x i8] c"exiting on abort\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i8*)* @nmreplay_main to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @nmreplay_main(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca %struct.pipe_args*, align 8
  %5 = alloca %struct._qs*, align 8
  %6 = alloca i8*, align 8
  store i8* %0, i8** %3, align 8
  %7 = load i8*, i8** %3, align 8
  %8 = bitcast i8* %7 to %struct.pipe_args*
  store %struct.pipe_args* %8, %struct.pipe_args** %4, align 8
  %9 = load %struct.pipe_args*, %struct.pipe_args** %4, align 8
  %10 = getelementptr inbounds %struct.pipe_args, %struct.pipe_args* %9, i32 0, i32 2
  store %struct._qs* %10, %struct._qs** %5, align 8
  %11 = load %struct._qs*, %struct._qs** %5, align 8
  %12 = getelementptr inbounds %struct._qs, %struct._qs* %11, i32 0, i32 0
  %13 = load i8*, i8** %12, align 8
  store i8* %13, i8** %6, align 8
  %14 = load %struct.pipe_args*, %struct.pipe_args** %4, align 8
  %15 = getelementptr inbounds %struct.pipe_args, %struct.pipe_args* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 8
  %17 = call i32 @setaffinity(i32 %16)
  %18 = load %struct._qs*, %struct._qs** %5, align 8
  %19 = getelementptr inbounds %struct._qs, %struct._qs* %18, i32 0, i32 3
  %20 = call i32 @set_tns_now(i32* %19, i32 0)
  %21 = load i8*, i8** %6, align 8
  %22 = icmp eq i8* %21, null
  br i1 %22, label %23, label %24

23:                                               ; preds = %1
  br label %68

24:                                               ; preds = %1
  %25 = load i8*, i8** %6, align 8
  %26 = call i32* @readpcap(i8* %25)
  %27 = load %struct._qs*, %struct._qs** %5, align 8
  %28 = getelementptr inbounds %struct._qs, %struct._qs* %27, i32 0, i32 1
  store i32* %26, i32** %28, align 8
  %29 = load %struct._qs*, %struct._qs** %5, align 8
  %30 = getelementptr inbounds %struct._qs, %struct._qs* %29, i32 0, i32 1
  %31 = load i32*, i32** %30, align 8
  %32 = icmp eq i32* %31, null
  br i1 %32, label %33, label %36

33:                                               ; preds = %24
  %34 = load i8*, i8** %6, align 8
  %35 = call i32 (i8*, ...) @EEE(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i8* %34)
  br label %68

36:                                               ; preds = %24
  %37 = load %struct.pipe_args*, %struct.pipe_args** %4, align 8
  %38 = bitcast %struct.pipe_args* %37 to i8*
  %39 = call i32 @pcap_prod(i8* %38)
  %40 = load %struct._qs*, %struct._qs** %5, align 8
  %41 = getelementptr inbounds %struct._qs, %struct._qs* %40, i32 0, i32 1
  %42 = load i32*, i32** %41, align 8
  %43 = call i32 @destroy_pcap(i32* %42)
  %44 = load %struct._qs*, %struct._qs** %5, align 8
  %45 = getelementptr inbounds %struct._qs, %struct._qs* %44, i32 0, i32 1
  store i32* null, i32** %45, align 8
  %46 = load %struct._qs*, %struct._qs** %5, align 8
  %47 = getelementptr inbounds %struct._qs, %struct._qs* %46, i32 0, i32 2
  %48 = load i32, i32* %47, align 8
  %49 = call i32* @nm_open(i32 %48, i32* null, i32 0, i32* null)
  %50 = load %struct.pipe_args*, %struct.pipe_args** %4, align 8
  %51 = getelementptr inbounds %struct.pipe_args, %struct.pipe_args* %50, i32 0, i32 0
  store i32* %49, i32** %51, align 8
  %52 = load %struct.pipe_args*, %struct.pipe_args** %4, align 8
  %53 = getelementptr inbounds %struct.pipe_args, %struct.pipe_args* %52, i32 0, i32 0
  %54 = load i32*, i32** %53, align 8
  %55 = icmp eq i32* %54, null
  br i1 %55, label %56, label %61

56:                                               ; preds = %36
  %57 = load %struct._qs*, %struct._qs** %5, align 8
  %58 = getelementptr inbounds %struct._qs, %struct._qs* %57, i32 0, i32 2
  %59 = load i32, i32* %58, align 8
  %60 = call i32 (i8*, ...) @EEE(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0), i32 %59)
  store i32 1, i32* @do_abort, align 4
  store i8* null, i8** %2, align 8
  br label %79

61:                                               ; preds = %36
  %62 = call i32 @WWW(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i64 0, i64 0))
  %63 = call i32 @usleep(i32 1000)
  %64 = load %struct.pipe_args*, %struct.pipe_args** %4, align 8
  %65 = bitcast %struct.pipe_args* %64 to i8*
  %66 = call i32 @cons(i8* %65)
  %67 = call i32 (i8*, ...) @EEE(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.3, i64 0, i64 0))
  br label %68

68:                                               ; preds = %61, %33, %23
  %69 = load %struct._qs*, %struct._qs** %5, align 8
  %70 = getelementptr inbounds %struct._qs, %struct._qs* %69, i32 0, i32 1
  %71 = load i32*, i32** %70, align 8
  %72 = icmp ne i32* %71, null
  br i1 %72, label %73, label %78

73:                                               ; preds = %68
  %74 = load %struct._qs*, %struct._qs** %5, align 8
  %75 = getelementptr inbounds %struct._qs, %struct._qs* %74, i32 0, i32 1
  %76 = load i32*, i32** %75, align 8
  %77 = call i32 @destroy_pcap(i32* %76)
  br label %78

78:                                               ; preds = %73, %68
  store i32 1, i32* @do_abort, align 4
  store i8* null, i8** %2, align 8
  br label %79

79:                                               ; preds = %78, %56
  %80 = load i8*, i8** %2, align 8
  ret i8* %80
}

declare dso_local i32 @setaffinity(i32) #1

declare dso_local i32 @set_tns_now(i32*, i32) #1

declare dso_local i32* @readpcap(i8*) #1

declare dso_local i32 @EEE(i8*, ...) #1

declare dso_local i32 @pcap_prod(i8*) #1

declare dso_local i32 @destroy_pcap(i32*) #1

declare dso_local i32* @nm_open(i32, i32*, i32, i32*) #1

declare dso_local i32 @WWW(i8*) #1

declare dso_local i32 @usleep(i32) #1

declare dso_local i32 @cons(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
