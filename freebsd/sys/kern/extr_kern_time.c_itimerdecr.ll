; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_kern_time.c_itimerdecr.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_kern_time.c_itimerdecr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.itimerval = type { %struct.TYPE_2__, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i64 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @itimerdecr(%struct.itimerval* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.itimerval*, align 8
  %5 = alloca i32, align 4
  store %struct.itimerval* %0, %struct.itimerval** %4, align 8
  store i32 %1, i32* %5, align 4
  %6 = load %struct.itimerval*, %struct.itimerval** %4, align 8
  %7 = getelementptr inbounds %struct.itimerval, %struct.itimerval* %6, i32 0, i32 0
  %8 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 8
  %10 = load i32, i32* %5, align 4
  %11 = icmp slt i32 %9, %10
  br i1 %11, label %12, label %36

12:                                               ; preds = %2
  %13 = load %struct.itimerval*, %struct.itimerval** %4, align 8
  %14 = getelementptr inbounds %struct.itimerval, %struct.itimerval* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 1
  %16 = load i64, i64* %15, align 8
  %17 = icmp eq i64 %16, 0
  br i1 %17, label %18, label %25

18:                                               ; preds = %12
  %19 = load %struct.itimerval*, %struct.itimerval** %4, align 8
  %20 = getelementptr inbounds %struct.itimerval, %struct.itimerval* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = load i32, i32* %5, align 4
  %24 = sub nsw i32 %23, %22
  store i32 %24, i32* %5, align 4
  br label %49

25:                                               ; preds = %12
  %26 = load %struct.itimerval*, %struct.itimerval** %4, align 8
  %27 = getelementptr inbounds %struct.itimerval, %struct.itimerval* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = add nsw i32 %29, 1000000
  store i32 %30, i32* %28, align 8
  %31 = load %struct.itimerval*, %struct.itimerval** %4, align 8
  %32 = getelementptr inbounds %struct.itimerval, %struct.itimerval* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 1
  %34 = load i64, i64* %33, align 8
  %35 = add nsw i64 %34, -1
  store i64 %35, i64* %33, align 8
  br label %36

36:                                               ; preds = %25, %2
  %37 = load i32, i32* %5, align 4
  %38 = load %struct.itimerval*, %struct.itimerval** %4, align 8
  %39 = getelementptr inbounds %struct.itimerval, %struct.itimerval* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = sub nsw i32 %41, %37
  store i32 %42, i32* %40, align 8
  store i32 0, i32* %5, align 4
  %43 = load %struct.itimerval*, %struct.itimerval** %4, align 8
  %44 = getelementptr inbounds %struct.itimerval, %struct.itimerval* %43, i32 0, i32 0
  %45 = call i64 @timevalisset(%struct.TYPE_2__* %44)
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %48

47:                                               ; preds = %36
  store i32 1, i32* %3, align 4
  br label %89

48:                                               ; preds = %36
  br label %49

49:                                               ; preds = %48, %18
  %50 = load %struct.itimerval*, %struct.itimerval** %4, align 8
  %51 = getelementptr inbounds %struct.itimerval, %struct.itimerval* %50, i32 0, i32 1
  %52 = call i64 @timevalisset(%struct.TYPE_2__* %51)
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %84

54:                                               ; preds = %49
  %55 = load %struct.itimerval*, %struct.itimerval** %4, align 8
  %56 = getelementptr inbounds %struct.itimerval, %struct.itimerval* %55, i32 0, i32 0
  %57 = load %struct.itimerval*, %struct.itimerval** %4, align 8
  %58 = getelementptr inbounds %struct.itimerval, %struct.itimerval* %57, i32 0, i32 1
  %59 = bitcast %struct.TYPE_2__* %56 to i8*
  %60 = bitcast %struct.TYPE_2__* %58 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %59, i8* align 8 %60, i64 16, i1 false)
  %61 = load i32, i32* %5, align 4
  %62 = load %struct.itimerval*, %struct.itimerval** %4, align 8
  %63 = getelementptr inbounds %struct.itimerval, %struct.itimerval* %62, i32 0, i32 0
  %64 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 8
  %66 = sub nsw i32 %65, %61
  store i32 %66, i32* %64, align 8
  %67 = load %struct.itimerval*, %struct.itimerval** %4, align 8
  %68 = getelementptr inbounds %struct.itimerval, %struct.itimerval* %67, i32 0, i32 0
  %69 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 8
  %71 = icmp slt i32 %70, 0
  br i1 %71, label %72, label %83

72:                                               ; preds = %54
  %73 = load %struct.itimerval*, %struct.itimerval** %4, align 8
  %74 = getelementptr inbounds %struct.itimerval, %struct.itimerval* %73, i32 0, i32 0
  %75 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 8
  %77 = add nsw i32 %76, 1000000
  store i32 %77, i32* %75, align 8
  %78 = load %struct.itimerval*, %struct.itimerval** %4, align 8
  %79 = getelementptr inbounds %struct.itimerval, %struct.itimerval* %78, i32 0, i32 0
  %80 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %79, i32 0, i32 1
  %81 = load i64, i64* %80, align 8
  %82 = add nsw i64 %81, -1
  store i64 %82, i64* %80, align 8
  br label %83

83:                                               ; preds = %72, %54
  br label %88

84:                                               ; preds = %49
  %85 = load %struct.itimerval*, %struct.itimerval** %4, align 8
  %86 = getelementptr inbounds %struct.itimerval, %struct.itimerval* %85, i32 0, i32 0
  %87 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %86, i32 0, i32 0
  store i32 0, i32* %87, align 8
  br label %88

88:                                               ; preds = %84, %83
  store i32 0, i32* %3, align 4
  br label %89

89:                                               ; preds = %88, %47
  %90 = load i32, i32* %3, align 4
  ret i32 %90
}

declare dso_local i64 @timevalisset(%struct.TYPE_2__*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
