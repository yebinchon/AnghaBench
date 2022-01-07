; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/rpc.lockd/extr_lock_proc.c_log_netobj.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/rpc.lockd/extr_lock_proc.c_log_netobj.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32* }

@MAX_NETOBJ_SZ = common dso_local global i32 0, align 4
@LOG_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [42 x i8] c"SOMEONE IS TRYING TO DO SOMETHING NASTY!\0A\00", align 1
@.str.1 = private unnamed_addr constant [39 x i8] c"netobj too large! Should be %d was %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"%02X\00", align 1
@.str.3 = private unnamed_addr constant [3 x i8] c"%c\00", align 1
@.str.4 = private unnamed_addr constant [16 x i8] c"netobjvals: %s\0A\00", align 1
@.str.5 = private unnamed_addr constant [16 x i8] c"netobjascs: %s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_3__*)* @log_netobj to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @log_netobj(%struct.TYPE_3__* %0) #0 {
  %2 = alloca %struct.TYPE_3__*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %2, align 8
  %10 = load i32, i32* @MAX_NETOBJ_SZ, align 4
  %11 = sext i32 %10 to i64
  %12 = mul i64 2, %11
  %13 = add i64 %12, 2
  %14 = call i8* @llvm.stacksave()
  store i8* %14, i8** %3, align 8
  %15 = alloca i8, i64 %13, align 16
  store i64 %13, i64* %4, align 8
  %16 = load i32, i32* @MAX_NETOBJ_SZ, align 4
  %17 = sext i32 %16 to i64
  %18 = mul i64 1, %17
  %19 = add i64 %18, 1
  %20 = alloca i8, i64 %19, align 16
  store i64 %19, i64* %5, align 8
  %21 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %22 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = load i32, i32* @MAX_NETOBJ_SZ, align 4
  %25 = icmp sgt i32 %23, %24
  br i1 %25, label %26, label %35

26:                                               ; preds = %1
  %27 = load i32, i32* @LOG_DEBUG, align 4
  %28 = call i32 (i32, i8*, ...) @syslog(i32 %27, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0))
  %29 = load i32, i32* @LOG_DEBUG, align 4
  %30 = load i32, i32* @MAX_NETOBJ_SZ, align 4
  %31 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %32 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = call i32 (i32, i8*, ...) @syslog(i32 %29, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.1, i64 0, i64 0), i32 %30, i32 %33)
  br label %35

35:                                               ; preds = %26, %1
  %36 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %37 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = load i32, i32* @MAX_NETOBJ_SZ, align 4
  %40 = icmp slt i32 %38, %39
  br i1 %40, label %41, label %45

41:                                               ; preds = %35
  %42 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %43 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  br label %47

45:                                               ; preds = %35
  %46 = load i32, i32* @MAX_NETOBJ_SZ, align 4
  br label %47

47:                                               ; preds = %45, %41
  %48 = phi i32 [ %44, %41 ], [ %46, %45 ]
  store i32 %48, i32* %7, align 4
  store i32 0, i32* %6, align 4
  store i8* %15, i8** %8, align 8
  store i8* %20, i8** %9, align 8
  br label %49

49:                                               ; preds = %72, %47
  %50 = load i32, i32* %6, align 4
  %51 = load i32, i32* %7, align 4
  %52 = icmp ult i32 %50, %51
  br i1 %52, label %53, label %79

53:                                               ; preds = %49
  %54 = load i8*, i8** %8, align 8
  %55 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %56 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %55, i32 0, i32 1
  %57 = load i32*, i32** %56, align 8
  %58 = load i32, i32* %6, align 4
  %59 = zext i32 %58 to i64
  %60 = getelementptr inbounds i32, i32* %57, i64 %59
  %61 = load i32, i32* %60, align 4
  %62 = call i32 @sprintf(i8* %54, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i32 %61)
  %63 = load i8*, i8** %9, align 8
  %64 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %65 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %64, i32 0, i32 1
  %66 = load i32*, i32** %65, align 8
  %67 = load i32, i32* %6, align 4
  %68 = zext i32 %67 to i64
  %69 = getelementptr inbounds i32, i32* %66, i64 %68
  %70 = load i32, i32* %69, align 4
  %71 = call i32 @sprintf(i8* %63, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), i32 %70)
  br label %72

72:                                               ; preds = %53
  %73 = load i32, i32* %6, align 4
  %74 = add i32 %73, 1
  store i32 %74, i32* %6, align 4
  %75 = load i8*, i8** %8, align 8
  %76 = getelementptr inbounds i8, i8* %75, i64 2
  store i8* %76, i8** %8, align 8
  %77 = load i8*, i8** %9, align 8
  %78 = getelementptr inbounds i8, i8* %77, i64 1
  store i8* %78, i8** %9, align 8
  br label %49

79:                                               ; preds = %49
  %80 = load i8*, i8** %8, align 8
  store i8 0, i8* %80, align 1
  %81 = load i8*, i8** %9, align 8
  store i8 0, i8* %81, align 1
  %82 = load i32, i32* @LOG_DEBUG, align 4
  %83 = call i32 (i32, i8*, ...) @syslog(i32 %82, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.4, i64 0, i64 0), i8* %15)
  %84 = load i32, i32* @LOG_DEBUG, align 4
  %85 = call i32 (i32, i8*, ...) @syslog(i32 %84, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.5, i64 0, i64 0), i8* %20)
  %86 = load i8*, i8** %3, align 8
  call void @llvm.stackrestore(i8* %86)
  ret void
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @syslog(i32, i8*, ...) #2

declare dso_local i32 @sprintf(i8*, i8*, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
