; ModuleID = '/home/carl/AnghaBench/freebsd/sys/nfs/extr_bootp_subr.c_bootpc_tag_helper.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/nfs/extr_bootp_subr.c_bootpc_tag_helper.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bootpc_tagcontext = type { i32, i32, i64, i32, i64, i8 }

@TAG_PAD = common dso_local global i8 0, align 1
@TAG_END = common dso_local global i8 0, align 1
@TAG_MAXLEN = common dso_local global i64 0, align 8
@TAG_OVERLOAD = common dso_local global i8 0, align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bootpc_tagcontext*, i8*, i32, i32)* @bootpc_tag_helper to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bootpc_tag_helper(%struct.bootpc_tagcontext* %0, i8* %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.bootpc_tagcontext*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8, align 1
  store %struct.bootpc_tagcontext* %0, %struct.bootpc_tagcontext** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %12 = load %struct.bootpc_tagcontext*, %struct.bootpc_tagcontext** %5, align 8
  %13 = getelementptr inbounds %struct.bootpc_tagcontext, %struct.bootpc_tagcontext* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %21, label %16

16:                                               ; preds = %4
  %17 = load %struct.bootpc_tagcontext*, %struct.bootpc_tagcontext** %5, align 8
  %18 = getelementptr inbounds %struct.bootpc_tagcontext, %struct.bootpc_tagcontext* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %22

21:                                               ; preds = %16, %4
  br label %126

22:                                               ; preds = %16
  %23 = load i8*, i8** %6, align 8
  store i8* %23, i8** %9, align 8
  %24 = load i8*, i8** %9, align 8
  %25 = load i32, i32* %7, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds i8, i8* %24, i64 %26
  store i8* %27, i8** %10, align 8
  br label %28

28:                                               ; preds = %121, %41, %22
  %29 = load i8*, i8** %9, align 8
  %30 = load i8*, i8** %10, align 8
  %31 = icmp ult i8* %29, %30
  br i1 %31, label %32, label %126

32:                                               ; preds = %28
  %33 = load i8*, i8** %9, align 8
  %34 = getelementptr inbounds i8, i8* %33, i32 1
  store i8* %34, i8** %9, align 8
  %35 = load i8, i8* %33, align 1
  store i8 %35, i8* %11, align 1
  %36 = load i8, i8* %11, align 1
  %37 = zext i8 %36 to i32
  %38 = load i8, i8* @TAG_PAD, align 1
  %39 = zext i8 %38 to i32
  %40 = icmp eq i32 %37, %39
  br i1 %40, label %41, label %42

41:                                               ; preds = %32
  br label %28

42:                                               ; preds = %32
  %43 = load i8, i8* %11, align 1
  %44 = zext i8 %43 to i32
  %45 = load i8, i8* @TAG_END, align 1
  %46 = zext i8 %45 to i32
  %47 = icmp eq i32 %44, %46
  br i1 %47, label %48, label %49

48:                                               ; preds = %42
  br label %126

49:                                               ; preds = %42
  %50 = load i8*, i8** %9, align 8
  %51 = load i8*, i8** %10, align 8
  %52 = icmp uge i8* %50, %51
  br i1 %52, label %63, label %53

53:                                               ; preds = %49
  %54 = load i8*, i8** %9, align 8
  %55 = load i8*, i8** %9, align 8
  %56 = load i8, i8* %55, align 1
  %57 = zext i8 %56 to i32
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds i8, i8* %54, i64 %58
  %60 = getelementptr inbounds i8, i8* %59, i64 1
  %61 = load i8*, i8** %10, align 8
  %62 = icmp ugt i8* %60, %61
  br i1 %62, label %63, label %66

63:                                               ; preds = %53, %49
  %64 = load %struct.bootpc_tagcontext*, %struct.bootpc_tagcontext** %5, align 8
  %65 = getelementptr inbounds %struct.bootpc_tagcontext, %struct.bootpc_tagcontext* %64, i32 0, i32 1
  store i32 1, i32* %65, align 4
  br label %126

66:                                               ; preds = %53
  %67 = load i8*, i8** %9, align 8
  %68 = getelementptr inbounds i8, i8* %67, i32 1
  store i8* %68, i8** %9, align 8
  %69 = load i8, i8* %67, align 1
  %70 = zext i8 %69 to i32
  store i32 %70, i32* %7, align 4
  %71 = load i8, i8* %11, align 1
  %72 = zext i8 %71 to i32
  %73 = load i32, i32* %8, align 4
  %74 = icmp eq i32 %72, %73
  br i1 %74, label %75, label %110

75:                                               ; preds = %66
  %76 = load %struct.bootpc_tagcontext*, %struct.bootpc_tagcontext** %5, align 8
  %77 = getelementptr inbounds %struct.bootpc_tagcontext, %struct.bootpc_tagcontext* %76, i32 0, i32 2
  %78 = load i64, i64* %77, align 8
  %79 = load i32, i32* %7, align 4
  %80 = sext i32 %79 to i64
  %81 = add nsw i64 %78, %80
  %82 = load i64, i64* @TAG_MAXLEN, align 8
  %83 = icmp sgt i64 %81, %82
  br i1 %83, label %84, label %87

84:                                               ; preds = %75
  %85 = load %struct.bootpc_tagcontext*, %struct.bootpc_tagcontext** %5, align 8
  %86 = getelementptr inbounds %struct.bootpc_tagcontext, %struct.bootpc_tagcontext* %85, i32 0, i32 0
  store i32 1, i32* %86, align 8
  br label %126

87:                                               ; preds = %75
  %88 = load %struct.bootpc_tagcontext*, %struct.bootpc_tagcontext** %5, align 8
  %89 = getelementptr inbounds %struct.bootpc_tagcontext, %struct.bootpc_tagcontext* %88, i32 0, i32 3
  store i32 1, i32* %89, align 8
  %90 = load i32, i32* %7, align 4
  %91 = icmp sgt i32 %90, 0
  br i1 %91, label %92, label %103

92:                                               ; preds = %87
  %93 = load %struct.bootpc_tagcontext*, %struct.bootpc_tagcontext** %5, align 8
  %94 = getelementptr inbounds %struct.bootpc_tagcontext, %struct.bootpc_tagcontext* %93, i32 0, i32 4
  %95 = load i64, i64* %94, align 8
  %96 = load %struct.bootpc_tagcontext*, %struct.bootpc_tagcontext** %5, align 8
  %97 = getelementptr inbounds %struct.bootpc_tagcontext, %struct.bootpc_tagcontext* %96, i32 0, i32 2
  %98 = load i64, i64* %97, align 8
  %99 = add nsw i64 %95, %98
  %100 = load i8*, i8** %9, align 8
  %101 = load i32, i32* %7, align 4
  %102 = call i32 @memcpy(i64 %99, i8* %100, i32 %101)
  br label %103

103:                                              ; preds = %92, %87
  %104 = load i32, i32* %7, align 4
  %105 = sext i32 %104 to i64
  %106 = load %struct.bootpc_tagcontext*, %struct.bootpc_tagcontext** %5, align 8
  %107 = getelementptr inbounds %struct.bootpc_tagcontext, %struct.bootpc_tagcontext* %106, i32 0, i32 2
  %108 = load i64, i64* %107, align 8
  %109 = add nsw i64 %108, %105
  store i64 %109, i64* %107, align 8
  br label %110

110:                                              ; preds = %103, %66
  %111 = load i8, i8* %11, align 1
  %112 = zext i8 %111 to i32
  %113 = load i8, i8* @TAG_OVERLOAD, align 1
  %114 = zext i8 %113 to i32
  %115 = icmp eq i32 %112, %114
  br i1 %115, label %116, label %121

116:                                              ; preds = %110
  %117 = load i8*, i8** %9, align 8
  %118 = load i8, i8* %117, align 1
  %119 = load %struct.bootpc_tagcontext*, %struct.bootpc_tagcontext** %5, align 8
  %120 = getelementptr inbounds %struct.bootpc_tagcontext, %struct.bootpc_tagcontext* %119, i32 0, i32 5
  store i8 %118, i8* %120, align 8
  br label %121

121:                                              ; preds = %116, %110
  %122 = load i32, i32* %7, align 4
  %123 = load i8*, i8** %9, align 8
  %124 = sext i32 %122 to i64
  %125 = getelementptr inbounds i8, i8* %123, i64 %124
  store i8* %125, i8** %9, align 8
  br label %28

126:                                              ; preds = %21, %48, %63, %84, %28
  ret void
}

declare dso_local i32 @memcpy(i64, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
