; ModuleID = '/home/carl/AnghaBench/freebsd/usr.bin/netstat/extr_bpf.c_bpf_flags.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.bin/netstat/extr_bpf.c_bpf_flags.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xbpf_d = type { i64, i64, i64, i64, i64, i64, i64 }

@BPF_D_IN = common dso_local global i64 0, align 8
@BPF_D_OUT = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [17 x i8] c"{e:promiscuous/}\00", align 1
@.str.1 = private unnamed_addr constant [15 x i8] c"{e:immediate/}\00", align 1
@.str.2 = private unnamed_addr constant [21 x i8] c"{e:header-complete/}\00", align 1
@.str.3 = private unnamed_addr constant [14 x i8] c"{e:direction}\00", align 1
@.str.4 = private unnamed_addr constant [6 x i8] c"input\00", align 1
@.str.5 = private unnamed_addr constant [7 x i8] c"output\00", align 1
@.str.6 = private unnamed_addr constant [14 x i8] c"bidirectional\00", align 1
@.str.7 = private unnamed_addr constant [14 x i8] c"{e:feedback/}\00", align 1
@.str.8 = private unnamed_addr constant [11 x i8] c"{e:async/}\00", align 1
@.str.9 = private unnamed_addr constant [12 x i8] c"{e:locked/}\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.xbpf_d*, i8*)* @bpf_flags to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bpf_flags(%struct.xbpf_d* %0, i8* %1) #0 {
  %3 = alloca %struct.xbpf_d*, align 8
  %4 = alloca i8*, align 8
  store %struct.xbpf_d* %0, %struct.xbpf_d** %3, align 8
  store i8* %1, i8** %4, align 8
  %5 = load %struct.xbpf_d*, %struct.xbpf_d** %3, align 8
  %6 = getelementptr inbounds %struct.xbpf_d, %struct.xbpf_d* %5, i32 0, i32 6
  %7 = load i64, i64* %6, align 8
  %8 = icmp ne i64 %7, 0
  %9 = zext i1 %8 to i64
  %10 = select i1 %8, i32 112, i32 45
  %11 = trunc i32 %10 to i8
  %12 = load i8*, i8** %4, align 8
  %13 = getelementptr inbounds i8, i8* %12, i32 1
  store i8* %13, i8** %4, align 8
  store i8 %11, i8* %12, align 1
  %14 = load %struct.xbpf_d*, %struct.xbpf_d** %3, align 8
  %15 = getelementptr inbounds %struct.xbpf_d, %struct.xbpf_d* %14, i32 0, i32 5
  %16 = load i64, i64* %15, align 8
  %17 = icmp ne i64 %16, 0
  %18 = zext i1 %17 to i64
  %19 = select i1 %17, i32 105, i32 45
  %20 = trunc i32 %19 to i8
  %21 = load i8*, i8** %4, align 8
  %22 = getelementptr inbounds i8, i8* %21, i32 1
  store i8* %22, i8** %4, align 8
  store i8 %20, i8* %21, align 1
  %23 = load %struct.xbpf_d*, %struct.xbpf_d** %3, align 8
  %24 = getelementptr inbounds %struct.xbpf_d, %struct.xbpf_d* %23, i32 0, i32 4
  %25 = load i64, i64* %24, align 8
  %26 = icmp ne i64 %25, 0
  %27 = zext i1 %26 to i64
  %28 = select i1 %26, i32 45, i32 102
  %29 = trunc i32 %28 to i8
  %30 = load i8*, i8** %4, align 8
  %31 = getelementptr inbounds i8, i8* %30, i32 1
  store i8* %31, i8** %4, align 8
  store i8 %29, i8* %30, align 1
  %32 = load %struct.xbpf_d*, %struct.xbpf_d** %3, align 8
  %33 = getelementptr inbounds %struct.xbpf_d, %struct.xbpf_d* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = load i64, i64* @BPF_D_IN, align 8
  %36 = icmp eq i64 %34, %35
  br i1 %36, label %37, label %38

37:                                               ; preds = %2
  br label %46

38:                                               ; preds = %2
  %39 = load %struct.xbpf_d*, %struct.xbpf_d** %3, align 8
  %40 = getelementptr inbounds %struct.xbpf_d, %struct.xbpf_d* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = load i64, i64* @BPF_D_OUT, align 8
  %43 = icmp eq i64 %41, %42
  %44 = zext i1 %43 to i64
  %45 = select i1 %43, i32 111, i32 115
  br label %46

46:                                               ; preds = %38, %37
  %47 = phi i32 [ 45, %37 ], [ %45, %38 ]
  %48 = trunc i32 %47 to i8
  %49 = load i8*, i8** %4, align 8
  %50 = getelementptr inbounds i8, i8* %49, i32 1
  store i8* %50, i8** %4, align 8
  store i8 %48, i8* %49, align 1
  %51 = load %struct.xbpf_d*, %struct.xbpf_d** %3, align 8
  %52 = getelementptr inbounds %struct.xbpf_d, %struct.xbpf_d* %51, i32 0, i32 3
  %53 = load i64, i64* %52, align 8
  %54 = icmp ne i64 %53, 0
  %55 = zext i1 %54 to i64
  %56 = select i1 %54, i32 98, i32 45
  %57 = trunc i32 %56 to i8
  %58 = load i8*, i8** %4, align 8
  %59 = getelementptr inbounds i8, i8* %58, i32 1
  store i8* %59, i8** %4, align 8
  store i8 %57, i8* %58, align 1
  %60 = load %struct.xbpf_d*, %struct.xbpf_d** %3, align 8
  %61 = getelementptr inbounds %struct.xbpf_d, %struct.xbpf_d* %60, i32 0, i32 2
  %62 = load i64, i64* %61, align 8
  %63 = icmp ne i64 %62, 0
  %64 = zext i1 %63 to i64
  %65 = select i1 %63, i32 97, i32 45
  %66 = trunc i32 %65 to i8
  %67 = load i8*, i8** %4, align 8
  %68 = getelementptr inbounds i8, i8* %67, i32 1
  store i8* %68, i8** %4, align 8
  store i8 %66, i8* %67, align 1
  %69 = load %struct.xbpf_d*, %struct.xbpf_d** %3, align 8
  %70 = getelementptr inbounds %struct.xbpf_d, %struct.xbpf_d* %69, i32 0, i32 1
  %71 = load i64, i64* %70, align 8
  %72 = icmp ne i64 %71, 0
  %73 = zext i1 %72 to i64
  %74 = select i1 %72, i32 108, i32 45
  %75 = trunc i32 %74 to i8
  %76 = load i8*, i8** %4, align 8
  %77 = getelementptr inbounds i8, i8* %76, i32 1
  store i8* %77, i8** %4, align 8
  store i8 %75, i8* %76, align 1
  %78 = load i8*, i8** %4, align 8
  %79 = getelementptr inbounds i8, i8* %78, i32 1
  store i8* %79, i8** %4, align 8
  store i8 0, i8* %78, align 1
  %80 = load %struct.xbpf_d*, %struct.xbpf_d** %3, align 8
  %81 = getelementptr inbounds %struct.xbpf_d, %struct.xbpf_d* %80, i32 0, i32 6
  %82 = load i64, i64* %81, align 8
  %83 = icmp ne i64 %82, 0
  br i1 %83, label %84, label %86

84:                                               ; preds = %46
  %85 = call i32 (i8*, ...) @xo_emit(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0))
  br label %86

86:                                               ; preds = %84, %46
  %87 = load %struct.xbpf_d*, %struct.xbpf_d** %3, align 8
  %88 = getelementptr inbounds %struct.xbpf_d, %struct.xbpf_d* %87, i32 0, i32 5
  %89 = load i64, i64* %88, align 8
  %90 = icmp ne i64 %89, 0
  br i1 %90, label %91, label %93

91:                                               ; preds = %86
  %92 = call i32 (i8*, ...) @xo_emit(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0))
  br label %93

93:                                               ; preds = %91, %86
  %94 = load %struct.xbpf_d*, %struct.xbpf_d** %3, align 8
  %95 = getelementptr inbounds %struct.xbpf_d, %struct.xbpf_d* %94, i32 0, i32 4
  %96 = load i64, i64* %95, align 8
  %97 = icmp ne i64 %96, 0
  br i1 %97, label %98, label %100

98:                                               ; preds = %93
  %99 = call i32 (i8*, ...) @xo_emit(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0))
  br label %100

100:                                              ; preds = %98, %93
  %101 = load %struct.xbpf_d*, %struct.xbpf_d** %3, align 8
  %102 = getelementptr inbounds %struct.xbpf_d, %struct.xbpf_d* %101, i32 0, i32 0
  %103 = load i64, i64* %102, align 8
  %104 = load i64, i64* @BPF_D_IN, align 8
  %105 = icmp eq i64 %103, %104
  br i1 %105, label %106, label %107

106:                                              ; preds = %100
  br label %115

107:                                              ; preds = %100
  %108 = load %struct.xbpf_d*, %struct.xbpf_d** %3, align 8
  %109 = getelementptr inbounds %struct.xbpf_d, %struct.xbpf_d* %108, i32 0, i32 0
  %110 = load i64, i64* %109, align 8
  %111 = load i64, i64* @BPF_D_OUT, align 8
  %112 = icmp eq i64 %110, %111
  %113 = zext i1 %112 to i64
  %114 = select i1 %112, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i64 0, i64 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.6, i64 0, i64 0)
  br label %115

115:                                              ; preds = %107, %106
  %116 = phi i8* [ getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i64 0, i64 0), %106 ], [ %114, %107 ]
  %117 = call i32 (i8*, ...) @xo_emit(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.3, i64 0, i64 0), i8* %116)
  %118 = load %struct.xbpf_d*, %struct.xbpf_d** %3, align 8
  %119 = getelementptr inbounds %struct.xbpf_d, %struct.xbpf_d* %118, i32 0, i32 3
  %120 = load i64, i64* %119, align 8
  %121 = icmp ne i64 %120, 0
  br i1 %121, label %122, label %124

122:                                              ; preds = %115
  %123 = call i32 (i8*, ...) @xo_emit(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.7, i64 0, i64 0))
  br label %124

124:                                              ; preds = %122, %115
  %125 = load %struct.xbpf_d*, %struct.xbpf_d** %3, align 8
  %126 = getelementptr inbounds %struct.xbpf_d, %struct.xbpf_d* %125, i32 0, i32 2
  %127 = load i64, i64* %126, align 8
  %128 = icmp ne i64 %127, 0
  br i1 %128, label %129, label %131

129:                                              ; preds = %124
  %130 = call i32 (i8*, ...) @xo_emit(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.8, i64 0, i64 0))
  br label %131

131:                                              ; preds = %129, %124
  %132 = load %struct.xbpf_d*, %struct.xbpf_d** %3, align 8
  %133 = getelementptr inbounds %struct.xbpf_d, %struct.xbpf_d* %132, i32 0, i32 1
  %134 = load i64, i64* %133, align 8
  %135 = icmp ne i64 %134, 0
  br i1 %135, label %136, label %138

136:                                              ; preds = %131
  %137 = call i32 (i8*, ...) @xo_emit(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.9, i64 0, i64 0))
  br label %138

138:                                              ; preds = %136, %131
  ret void
}

declare dso_local i32 @xo_emit(i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
