; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/ppp/extr_ncpaddr.c_ncpaddr_aton.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/ppp/extr_ncpaddr.c_ncpaddr_aton.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ncpaddr = type { i32, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }
%struct.ncp = type { i32 }
%struct.ncprange = type { i32, i32, i32, i32, %struct.TYPE_2__ }

@INADDR_ANY = common dso_local global i64 0, align 8
@LogWARN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [40 x i8] c"ncpaddr_aton: %s: Only 32 bits allowed\0A\00", align 1
@.str.1 = private unnamed_addr constant [41 x i8] c"ncpaddr_aton: %s: Only 128 bits allowed\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ncpaddr_aton(%struct.ncpaddr* %0, %struct.ncp* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.ncpaddr*, align 8
  %6 = alloca %struct.ncp*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.ncprange, align 8
  store %struct.ncpaddr* %0, %struct.ncpaddr** %5, align 8
  store %struct.ncp* %1, %struct.ncp** %6, align 8
  store i8* %2, i8** %7, align 8
  %9 = load %struct.ncp*, %struct.ncp** %6, align 8
  %10 = load i8*, i8** %7, align 8
  %11 = call i32 @ncprange_aton(%struct.ncprange* %8, %struct.ncp* %9, i8* %10)
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %14, label %13

13:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %71

14:                                               ; preds = %3
  %15 = getelementptr inbounds %struct.ncprange, %struct.ncprange* %8, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = icmp eq i32 %16, 129
  br i1 %17, label %18, label %32

18:                                               ; preds = %14
  %19 = getelementptr inbounds %struct.ncprange, %struct.ncprange* %8, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  %21 = icmp ne i32 %20, 32
  br i1 %21, label %22, label %32

22:                                               ; preds = %18
  %23 = getelementptr inbounds %struct.ncprange, %struct.ncprange* %8, i32 0, i32 4
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = load i64, i64* @INADDR_ANY, align 8
  %27 = icmp ne i64 %25, %26
  br i1 %27, label %28, label %32

28:                                               ; preds = %22
  %29 = load i32, i32* @LogWARN, align 4
  %30 = load i8*, i8** %7, align 8
  %31 = call i32 @log_Printf(i32 %29, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0), i8* %30)
  store i32 0, i32* %4, align 4
  br label %71

32:                                               ; preds = %22, %18, %14
  %33 = getelementptr inbounds %struct.ncprange, %struct.ncprange* %8, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = icmp eq i32 %34, 128
  br i1 %35, label %36, label %48

36:                                               ; preds = %32
  %37 = getelementptr inbounds %struct.ncprange, %struct.ncprange* %8, i32 0, i32 2
  %38 = load i32, i32* %37, align 8
  %39 = icmp ne i32 %38, 128
  br i1 %39, label %40, label %48

40:                                               ; preds = %36
  %41 = getelementptr inbounds %struct.ncprange, %struct.ncprange* %8, i32 0, i32 3
  %42 = call i32 @IN6_IS_ADDR_UNSPECIFIED(i32* %41)
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %48, label %44

44:                                               ; preds = %40
  %45 = load i32, i32* @LogWARN, align 4
  %46 = load i8*, i8** %7, align 8
  %47 = call i32 @log_Printf(i32 %45, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.1, i64 0, i64 0), i8* %46)
  store i32 0, i32* %4, align 4
  br label %71

48:                                               ; preds = %40, %36, %32
  %49 = getelementptr inbounds %struct.ncprange, %struct.ncprange* %8, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  switch i32 %50, label %70 [
    i32 129, label %51
    i32 128, label %61
  ]

51:                                               ; preds = %48
  %52 = getelementptr inbounds %struct.ncprange, %struct.ncprange* %8, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  %54 = load %struct.ncpaddr*, %struct.ncpaddr** %5, align 8
  %55 = getelementptr inbounds %struct.ncpaddr, %struct.ncpaddr* %54, i32 0, i32 0
  store i32 %53, i32* %55, align 8
  %56 = load %struct.ncpaddr*, %struct.ncpaddr** %5, align 8
  %57 = getelementptr inbounds %struct.ncpaddr, %struct.ncpaddr* %56, i32 0, i32 2
  %58 = getelementptr inbounds %struct.ncprange, %struct.ncprange* %8, i32 0, i32 4
  %59 = bitcast %struct.TYPE_2__* %57 to i8*
  %60 = bitcast %struct.TYPE_2__* %58 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %59, i8* align 8 %60, i64 8, i1 false)
  store i32 1, i32* %4, align 4
  br label %71

61:                                               ; preds = %48
  %62 = getelementptr inbounds %struct.ncprange, %struct.ncprange* %8, i32 0, i32 0
  %63 = load i32, i32* %62, align 8
  %64 = load %struct.ncpaddr*, %struct.ncpaddr** %5, align 8
  %65 = getelementptr inbounds %struct.ncpaddr, %struct.ncpaddr* %64, i32 0, i32 0
  store i32 %63, i32* %65, align 8
  %66 = getelementptr inbounds %struct.ncprange, %struct.ncprange* %8, i32 0, i32 3
  %67 = load i32, i32* %66, align 4
  %68 = load %struct.ncpaddr*, %struct.ncpaddr** %5, align 8
  %69 = getelementptr inbounds %struct.ncpaddr, %struct.ncpaddr* %68, i32 0, i32 1
  store i32 %67, i32* %69, align 4
  store i32 1, i32* %4, align 4
  br label %71

70:                                               ; preds = %48
  store i32 0, i32* %4, align 4
  br label %71

71:                                               ; preds = %70, %61, %51, %44, %28, %13
  %72 = load i32, i32* %4, align 4
  ret i32 %72
}

declare dso_local i32 @ncprange_aton(%struct.ncprange*, %struct.ncp*, i8*) #1

declare dso_local i32 @log_Printf(i32, i8*, i8*) #1

declare dso_local i32 @IN6_IS_ADDR_UNSPECIFIED(i32*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
