; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/rpcbind/extr_rpcb_stat.c_rpcbs_getaddr.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/rpcbind/extr_rpcb_stat.c_rpcbs_getaddr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i64, i64, i32, i32, %struct.TYPE_3__*, i32* }
%struct.netconfig = type { i32* }

@RPCBVERS_STAT = common dso_local global i64 0, align 8
@inf = common dso_local global %struct.TYPE_4__* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @rpcbs_getaddr(i64 %0, i64 %1, i64 %2, i8* %3, i8* %4) #0 {
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca %struct.TYPE_3__*, align 8
  %12 = alloca %struct.netconfig*, align 8
  store i64 %0, i64* %6, align 8
  store i64 %1, i64* %7, align 8
  store i64 %2, i64* %8, align 8
  store i8* %3, i8** %9, align 8
  store i8* %4, i8** %10, align 8
  %13 = load i64, i64* %6, align 8
  %14 = load i64, i64* @RPCBVERS_STAT, align 8
  %15 = icmp uge i64 %13, %14
  br i1 %15, label %16, label %17

16:                                               ; preds = %5
  br label %131

17:                                               ; preds = %5
  %18 = load %struct.TYPE_4__*, %struct.TYPE_4__** @inf, align 8
  %19 = load i64, i64* %6, align 8
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i64 %19
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 0
  %22 = load %struct.TYPE_3__*, %struct.TYPE_3__** %21, align 8
  store %struct.TYPE_3__* %22, %struct.TYPE_3__** %11, align 8
  br label %23

23:                                               ; preds = %72, %17
  %24 = load %struct.TYPE_3__*, %struct.TYPE_3__** %11, align 8
  %25 = icmp ne %struct.TYPE_3__* %24, null
  br i1 %25, label %26, label %76

26:                                               ; preds = %23
  %27 = load %struct.TYPE_3__*, %struct.TYPE_3__** %11, align 8
  %28 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %27, i32 0, i32 5
  %29 = load i32*, i32** %28, align 8
  %30 = icmp eq i32* %29, null
  br i1 %30, label %31, label %32

31:                                               ; preds = %26
  br label %131

32:                                               ; preds = %26
  %33 = load %struct.TYPE_3__*, %struct.TYPE_3__** %11, align 8
  %34 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = load i64, i64* %7, align 8
  %37 = icmp eq i64 %35, %36
  br i1 %37, label %38, label %71

38:                                               ; preds = %32
  %39 = load %struct.TYPE_3__*, %struct.TYPE_3__** %11, align 8
  %40 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %39, i32 0, i32 1
  %41 = load i64, i64* %40, align 8
  %42 = load i64, i64* %8, align 8
  %43 = icmp eq i64 %41, %42
  br i1 %43, label %44, label %71

44:                                               ; preds = %38
  %45 = load %struct.TYPE_3__*, %struct.TYPE_3__** %11, align 8
  %46 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %45, i32 0, i32 5
  %47 = load i32*, i32** %46, align 8
  %48 = load i8*, i8** %9, align 8
  %49 = call i64 @strcmp(i32* %47, i8* %48)
  %50 = icmp eq i64 %49, 0
  br i1 %50, label %51, label %71

51:                                               ; preds = %44
  %52 = load i8*, i8** %10, align 8
  %53 = icmp eq i8* %52, null
  br i1 %53, label %60, label %54

54:                                               ; preds = %51
  %55 = load i8*, i8** %10, align 8
  %56 = getelementptr inbounds i8, i8* %55, i64 0
  %57 = load i8, i8* %56, align 1
  %58 = sext i8 %57 to i32
  %59 = icmp eq i32 %58, 0
  br i1 %59, label %60, label %65

60:                                               ; preds = %54, %51
  %61 = load %struct.TYPE_3__*, %struct.TYPE_3__** %11, align 8
  %62 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %61, i32 0, i32 2
  %63 = load i32, i32* %62, align 8
  %64 = add nsw i32 %63, 1
  store i32 %64, i32* %62, align 8
  br label %70

65:                                               ; preds = %54
  %66 = load %struct.TYPE_3__*, %struct.TYPE_3__** %11, align 8
  %67 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %66, i32 0, i32 3
  %68 = load i32, i32* %67, align 4
  %69 = add nsw i32 %68, 1
  store i32 %69, i32* %67, align 4
  br label %70

70:                                               ; preds = %65, %60
  br label %131

71:                                               ; preds = %44, %38, %32
  br label %72

72:                                               ; preds = %71
  %73 = load %struct.TYPE_3__*, %struct.TYPE_3__** %11, align 8
  %74 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %73, i32 0, i32 4
  %75 = load %struct.TYPE_3__*, %struct.TYPE_3__** %74, align 8
  store %struct.TYPE_3__* %75, %struct.TYPE_3__** %11, align 8
  br label %23

76:                                               ; preds = %23
  %77 = load i8*, i8** %9, align 8
  %78 = call %struct.netconfig* @rpcbind_get_conf(i8* %77)
  store %struct.netconfig* %78, %struct.netconfig** %12, align 8
  %79 = load %struct.netconfig*, %struct.netconfig** %12, align 8
  %80 = icmp eq %struct.netconfig* %79, null
  br i1 %80, label %81, label %82

81:                                               ; preds = %76
  br label %131

82:                                               ; preds = %76
  %83 = call i64 @malloc(i32 40)
  %84 = inttoptr i64 %83 to %struct.TYPE_3__*
  store %struct.TYPE_3__* %84, %struct.TYPE_3__** %11, align 8
  %85 = load %struct.TYPE_3__*, %struct.TYPE_3__** %11, align 8
  %86 = icmp eq %struct.TYPE_3__* %85, null
  br i1 %86, label %87, label %88

87:                                               ; preds = %82
  br label %131

88:                                               ; preds = %82
  %89 = load i64, i64* %7, align 8
  %90 = load %struct.TYPE_3__*, %struct.TYPE_3__** %11, align 8
  %91 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %90, i32 0, i32 0
  store i64 %89, i64* %91, align 8
  %92 = load i64, i64* %8, align 8
  %93 = load %struct.TYPE_3__*, %struct.TYPE_3__** %11, align 8
  %94 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %93, i32 0, i32 1
  store i64 %92, i64* %94, align 8
  %95 = load %struct.netconfig*, %struct.netconfig** %12, align 8
  %96 = getelementptr inbounds %struct.netconfig, %struct.netconfig* %95, i32 0, i32 0
  %97 = load i32*, i32** %96, align 8
  %98 = load %struct.TYPE_3__*, %struct.TYPE_3__** %11, align 8
  %99 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %98, i32 0, i32 5
  store i32* %97, i32** %99, align 8
  %100 = load i8*, i8** %10, align 8
  %101 = icmp eq i8* %100, null
  br i1 %101, label %108, label %102

102:                                              ; preds = %88
  %103 = load i8*, i8** %10, align 8
  %104 = getelementptr inbounds i8, i8* %103, i64 0
  %105 = load i8, i8* %104, align 1
  %106 = sext i8 %105 to i32
  %107 = icmp eq i32 %106, 0
  br i1 %107, label %108, label %113

108:                                              ; preds = %102, %88
  %109 = load %struct.TYPE_3__*, %struct.TYPE_3__** %11, align 8
  %110 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %109, i32 0, i32 2
  store i32 1, i32* %110, align 8
  %111 = load %struct.TYPE_3__*, %struct.TYPE_3__** %11, align 8
  %112 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %111, i32 0, i32 3
  store i32 0, i32* %112, align 4
  br label %118

113:                                              ; preds = %102
  %114 = load %struct.TYPE_3__*, %struct.TYPE_3__** %11, align 8
  %115 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %114, i32 0, i32 2
  store i32 0, i32* %115, align 8
  %116 = load %struct.TYPE_3__*, %struct.TYPE_3__** %11, align 8
  %117 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %116, i32 0, i32 3
  store i32 1, i32* %117, align 4
  br label %118

118:                                              ; preds = %113, %108
  %119 = load %struct.TYPE_4__*, %struct.TYPE_4__** @inf, align 8
  %120 = load i64, i64* %6, align 8
  %121 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %119, i64 %120
  %122 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %121, i32 0, i32 0
  %123 = load %struct.TYPE_3__*, %struct.TYPE_3__** %122, align 8
  %124 = load %struct.TYPE_3__*, %struct.TYPE_3__** %11, align 8
  %125 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %124, i32 0, i32 4
  store %struct.TYPE_3__* %123, %struct.TYPE_3__** %125, align 8
  %126 = load %struct.TYPE_3__*, %struct.TYPE_3__** %11, align 8
  %127 = load %struct.TYPE_4__*, %struct.TYPE_4__** @inf, align 8
  %128 = load i64, i64* %6, align 8
  %129 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %127, i64 %128
  %130 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %129, i32 0, i32 0
  store %struct.TYPE_3__* %126, %struct.TYPE_3__** %130, align 8
  br label %131

131:                                              ; preds = %118, %87, %81, %70, %31, %16
  ret void
}

declare dso_local i64 @strcmp(i32*, i8*) #1

declare dso_local %struct.netconfig* @rpcbind_get_conf(i8*) #1

declare dso_local i64 @malloc(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
