; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/ppp/extr_lcp.c_lcp_SendIdentification.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/ppp/extr_lcp.c_lcp_SendIdentification.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lcp = type { i8*, %struct.TYPE_4__, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i8* }

@lcp_SendIdentification.id = internal global i8 0, align 1
@DEF_MRU = common dso_local global i32 0, align 4
@CODE_IDENT = common dso_local global i32 0, align 4
@MB_LCPOUT = common dso_local global i32 0, align 4
@LogLCP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [16 x i8] c" MAGICNUM %08x\0A\00", align 1
@.str.1 = private unnamed_addr constant [10 x i8] c" TEXT %s\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @lcp_SendIdentification(%struct.lcp* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.lcp*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca [2 x i8*], align 16
  %7 = alloca [2 x i8*], align 16
  %8 = alloca i32, align 4
  store %struct.lcp* %0, %struct.lcp** %3, align 8
  %9 = load i32, i32* @DEF_MRU, align 4
  %10 = sub nsw i32 %9, 3
  %11 = zext i32 %10 to i64
  %12 = call i8* @llvm.stacksave()
  store i8* %12, i8** %4, align 8
  %13 = alloca i8, i64 %11, align 16
  store i64 %11, i64* %5, align 8
  %14 = load %struct.lcp*, %struct.lcp** %3, align 8
  %15 = getelementptr inbounds %struct.lcp, %struct.lcp* %14, i32 0, i32 2
  %16 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i32 0, i32 0
  %17 = load i8*, i8** %16, align 8
  %18 = load i8, i8* %17, align 1
  %19 = sext i8 %18 to i32
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %21, label %22

21:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  store i32 1, i32* %8, align 4
  br label %69

22:                                               ; preds = %1
  %23 = load %struct.lcp*, %struct.lcp** %3, align 8
  %24 = getelementptr inbounds %struct.lcp, %struct.lcp* %23, i32 0, i32 2
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %24, i32 0, i32 0
  %26 = load i8*, i8** %25, align 8
  %27 = getelementptr inbounds [2 x i8*], [2 x i8*]* %6, i64 0, i64 0
  store i8* %26, i8** %27, align 16
  %28 = getelementptr inbounds [2 x i8*], [2 x i8*]* %6, i64 0, i64 1
  store i8* null, i8** %28, align 8
  %29 = getelementptr inbounds [2 x i8*], [2 x i8*]* %7, i64 0, i64 0
  %30 = getelementptr inbounds [2 x i8*], [2 x i8*]* %6, i64 0, i64 0
  %31 = load %struct.lcp*, %struct.lcp** %3, align 8
  %32 = getelementptr inbounds %struct.lcp, %struct.lcp* %31, i32 0, i32 1
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = call i32 (...) @getpid()
  %36 = call i32 @command_Expand(i8** %29, i32 1, i8** %30, i32 %34, i32 1, i32 %35)
  %37 = load %struct.lcp*, %struct.lcp** %3, align 8
  %38 = getelementptr inbounds %struct.lcp, %struct.lcp* %37, i32 0, i32 0
  %39 = call i32 @ua_htonl(i8** %38, i8* %13)
  %40 = getelementptr inbounds i8, i8* %13, i64 4
  %41 = getelementptr inbounds [2 x i8*], [2 x i8*]* %7, i64 0, i64 0
  %42 = load i8*, i8** %41, align 16
  %43 = sub i64 %11, 5
  %44 = trunc i64 %43 to i32
  %45 = call i32 @strncpy(i8* %40, i8* %42, i32 %44)
  %46 = sub i64 %11, 1
  %47 = getelementptr inbounds i8, i8* %13, i64 %46
  store i8 0, i8* %47, align 1
  %48 = load %struct.lcp*, %struct.lcp** %3, align 8
  %49 = getelementptr inbounds %struct.lcp, %struct.lcp* %48, i32 0, i32 1
  %50 = load i32, i32* @CODE_IDENT, align 4
  %51 = load i8, i8* @lcp_SendIdentification.id, align 1
  %52 = add i8 %51, 1
  store i8 %52, i8* @lcp_SendIdentification.id, align 1
  %53 = sext i8 %51 to i32
  %54 = getelementptr inbounds i8, i8* %13, i64 4
  %55 = call i64 @strlen(i8* %54)
  %56 = add nsw i64 4, %55
  %57 = load i32, i32* @MB_LCPOUT, align 4
  %58 = call i32 @fsm_Output(%struct.TYPE_4__* %49, i32 %50, i32 %53, i8* %13, i64 %56, i32 %57)
  %59 = load i32, i32* @LogLCP, align 4
  %60 = load %struct.lcp*, %struct.lcp** %3, align 8
  %61 = getelementptr inbounds %struct.lcp, %struct.lcp* %60, i32 0, i32 0
  %62 = load i8*, i8** %61, align 8
  %63 = call i32 @log_Printf(i32 %59, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), i8* %62)
  %64 = load i32, i32* @LogLCP, align 4
  %65 = getelementptr inbounds i8, i8* %13, i64 4
  %66 = call i32 @log_Printf(i32 %64, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0), i8* %65)
  %67 = getelementptr inbounds [2 x i8*], [2 x i8*]* %7, i64 0, i64 0
  %68 = call i32 @command_Free(i32 1, i8** %67)
  store i32 1, i32* %2, align 4
  store i32 1, i32* %8, align 4
  br label %69

69:                                               ; preds = %22, %21
  %70 = load i8*, i8** %4, align 8
  call void @llvm.stackrestore(i8* %70)
  %71 = load i32, i32* %2, align 4
  ret i32 %71
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @command_Expand(i8**, i32, i8**, i32, i32, i32) #2

declare dso_local i32 @getpid(...) #2

declare dso_local i32 @ua_htonl(i8**, i8*) #2

declare dso_local i32 @strncpy(i8*, i8*, i32) #2

declare dso_local i32 @fsm_Output(%struct.TYPE_4__*, i32, i32, i8*, i64, i32) #2

declare dso_local i64 @strlen(i8*) #2

declare dso_local i32 @log_Printf(i32, i8*, i8*) #2

declare dso_local i32 @command_Free(i32, i8**) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
