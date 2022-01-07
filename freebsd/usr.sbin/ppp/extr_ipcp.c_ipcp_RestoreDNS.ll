; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/ppp/extr_ipcp.c_ipcp_RestoreDNS.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/ppp/extr_ipcp.c_ipcp_RestoreDNS.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ipcp = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i64 }

@_PATH_RESCONF = common dso_local global i32 0, align 4
@O_WRONLY = common dso_local global i32 0, align 4
@O_TRUNC = common dso_local global i32 0, align 4
@LogERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"Failed rewriting %s: write: %s\0A\00", align 1
@errno = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [39 x i8] c"Failed rewriting %s: wrote %ld of %ld\0A\00", align 1
@.str.2 = private unnamed_addr constant [31 x i8] c"Failed rewriting %s: open: %s\0A\00", align 1
@.str.3 = private unnamed_addr constant [24 x i8] c"Failed removing %s: %s\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ipcp_RestoreDNS(%struct.ipcp* %0) #0 {
  %2 = alloca %struct.ipcp*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.ipcp* %0, %struct.ipcp** %2, align 8
  %6 = load %struct.ipcp*, %struct.ipcp** %2, align 8
  %7 = getelementptr inbounds %struct.ipcp, %struct.ipcp* %6, i32 0, i32 0
  %8 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i32 0, i32 1
  %9 = load i64, i64* %8, align 8
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %63

11:                                               ; preds = %1
  %12 = load i32, i32* @_PATH_RESCONF, align 4
  %13 = load i32, i32* @O_WRONLY, align 4
  %14 = load i32, i32* @O_TRUNC, align 4
  %15 = or i32 %13, %14
  %16 = call i32 @ID0open(i32 %12, i32 %15, i32 420)
  store i32 %16, i32* %5, align 4
  %17 = icmp ne i32 %16, -1
  br i1 %17, label %18, label %55

18:                                               ; preds = %11
  %19 = load %struct.ipcp*, %struct.ipcp** %2, align 8
  %20 = getelementptr inbounds %struct.ipcp, %struct.ipcp* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = call i32 @strlen(i32 %22)
  store i32 %23, i32* %4, align 4
  %24 = load i32, i32* %5, align 4
  %25 = load %struct.ipcp*, %struct.ipcp** %2, align 8
  %26 = getelementptr inbounds %struct.ipcp, %struct.ipcp* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = load i32, i32* %4, align 4
  %30 = call i32 @write(i32 %24, i32 %28, i32 %29)
  store i32 %30, i32* %3, align 4
  %31 = load i32, i32* %4, align 4
  %32 = icmp ne i32 %30, %31
  br i1 %32, label %33, label %52

33:                                               ; preds = %18
  %34 = load i32, i32* %3, align 4
  %35 = icmp eq i32 %34, -1
  br i1 %35, label %36, label %43

36:                                               ; preds = %33
  %37 = load i32, i32* @LogERROR, align 4
  %38 = load i32, i32* @_PATH_RESCONF, align 4
  %39 = load i32, i32* @errno, align 4
  %40 = call i32 @strerror(i32 %39)
  %41 = sext i32 %40 to i64
  %42 = call i32 (i32, i8*, i32, i64, ...) @log_Printf(i32 %37, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i32 %38, i64 %41)
  br label %51

43:                                               ; preds = %33
  %44 = load i32, i32* @LogERROR, align 4
  %45 = load i32, i32* @_PATH_RESCONF, align 4
  %46 = load i32, i32* %3, align 4
  %47 = sext i32 %46 to i64
  %48 = load i32, i32* %4, align 4
  %49 = sext i32 %48 to i64
  %50 = call i32 (i32, i8*, i32, i64, ...) @log_Printf(i32 %44, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.1, i64 0, i64 0), i32 %45, i64 %47, i64 %49)
  br label %51

51:                                               ; preds = %43, %36
  br label %52

52:                                               ; preds = %51, %18
  %53 = load i32, i32* %5, align 4
  %54 = call i32 @close(i32 %53)
  br label %62

55:                                               ; preds = %11
  %56 = load i32, i32* @LogERROR, align 4
  %57 = load i32, i32* @_PATH_RESCONF, align 4
  %58 = load i32, i32* @errno, align 4
  %59 = call i32 @strerror(i32 %58)
  %60 = sext i32 %59 to i64
  %61 = call i32 (i32, i8*, i32, i64, ...) @log_Printf(i32 %56, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.2, i64 0, i64 0), i32 %57, i64 %60)
  br label %62

62:                                               ; preds = %55, %52
  br label %75

63:                                               ; preds = %1
  %64 = load i32, i32* @_PATH_RESCONF, align 4
  %65 = call i32 @remove(i32 %64)
  %66 = icmp eq i32 %65, -1
  br i1 %66, label %67, label %74

67:                                               ; preds = %63
  %68 = load i32, i32* @LogERROR, align 4
  %69 = load i32, i32* @_PATH_RESCONF, align 4
  %70 = load i32, i32* @errno, align 4
  %71 = call i32 @strerror(i32 %70)
  %72 = sext i32 %71 to i64
  %73 = call i32 (i32, i8*, i32, i64, ...) @log_Printf(i32 %68, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.3, i64 0, i64 0), i32 %69, i64 %72)
  br label %74

74:                                               ; preds = %67, %63
  br label %75

75:                                               ; preds = %74, %62
  ret void
}

declare dso_local i32 @ID0open(i32, i32, i32) #1

declare dso_local i32 @strlen(i32) #1

declare dso_local i32 @write(i32, i32, i32) #1

declare dso_local i32 @log_Printf(i32, i8*, i32, i64, ...) #1

declare dso_local i32 @strerror(i32) #1

declare dso_local i32 @close(i32) #1

declare dso_local i32 @remove(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
