; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_subr_msgbuf.c_msgbuf_reinit.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_subr_msgbuf.c_msgbuf_reinit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.msgbuf = type { i64, i32, i64, i32, i32, i32, i8*, i8*, i8*, i32 }

@MSG_MAGIC = common dso_local global i64 0, align 8
@bootverbose = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [42 x i8] c"msgbuf cksum mismatch (read %x, calc %x)\0A\00", align 1
@.str.1 = private unnamed_addr constant [26 x i8] c"Old msgbuf not recovered\0A\00", align 1
@MSGBUF_NEEDNL = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [7 x i8] c"msgbuf\00", align 1
@MTX_SPIN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @msgbuf_reinit(%struct.msgbuf* %0, i8* %1, i32 %2) #0 {
  %4 = alloca %struct.msgbuf*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  store %struct.msgbuf* %0, %struct.msgbuf** %4, align 8
  store i8* %1, i8** %5, align 8
  store i32 %2, i32* %6, align 4
  %8 = load %struct.msgbuf*, %struct.msgbuf** %4, align 8
  %9 = getelementptr inbounds %struct.msgbuf, %struct.msgbuf* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = load i64, i64* @MSG_MAGIC, align 8
  %12 = icmp ne i64 %10, %11
  br i1 %12, label %19, label %13

13:                                               ; preds = %3
  %14 = load %struct.msgbuf*, %struct.msgbuf** %4, align 8
  %15 = getelementptr inbounds %struct.msgbuf, %struct.msgbuf* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 8
  %17 = load i32, i32* %6, align 4
  %18 = icmp ne i32 %16, %17
  br i1 %18, label %19, label %24

19:                                               ; preds = %13, %3
  %20 = load %struct.msgbuf*, %struct.msgbuf** %4, align 8
  %21 = load i8*, i8** %5, align 8
  %22 = load i32, i32* %6, align 4
  %23 = call i32 @msgbuf_init(%struct.msgbuf* %20, i8* %21, i32 %22)
  br label %81

24:                                               ; preds = %13
  %25 = load i32, i32* %6, align 4
  %26 = call i32 @SEQMOD(i32 %25)
  %27 = load %struct.msgbuf*, %struct.msgbuf** %4, align 8
  %28 = getelementptr inbounds %struct.msgbuf, %struct.msgbuf* %27, i32 0, i32 9
  store i32 %26, i32* %28, align 8
  %29 = load %struct.msgbuf*, %struct.msgbuf** %4, align 8
  %30 = load %struct.msgbuf*, %struct.msgbuf** %4, align 8
  %31 = getelementptr inbounds %struct.msgbuf, %struct.msgbuf* %30, i32 0, i32 8
  %32 = load i8*, i8** %31, align 8
  %33 = call i8* @MSGBUF_SEQNORM(%struct.msgbuf* %29, i8* %32)
  %34 = load %struct.msgbuf*, %struct.msgbuf** %4, align 8
  %35 = getelementptr inbounds %struct.msgbuf, %struct.msgbuf* %34, i32 0, i32 8
  store i8* %33, i8** %35, align 8
  %36 = load %struct.msgbuf*, %struct.msgbuf** %4, align 8
  %37 = load %struct.msgbuf*, %struct.msgbuf** %4, align 8
  %38 = getelementptr inbounds %struct.msgbuf, %struct.msgbuf* %37, i32 0, i32 7
  %39 = load i8*, i8** %38, align 8
  %40 = call i8* @MSGBUF_SEQNORM(%struct.msgbuf* %36, i8* %39)
  %41 = load %struct.msgbuf*, %struct.msgbuf** %4, align 8
  %42 = getelementptr inbounds %struct.msgbuf, %struct.msgbuf* %41, i32 0, i32 7
  store i8* %40, i8** %42, align 8
  %43 = load i8*, i8** %5, align 8
  %44 = load %struct.msgbuf*, %struct.msgbuf** %4, align 8
  %45 = getelementptr inbounds %struct.msgbuf, %struct.msgbuf* %44, i32 0, i32 6
  store i8* %43, i8** %45, align 8
  %46 = load %struct.msgbuf*, %struct.msgbuf** %4, align 8
  %47 = call i64 @msgbuf_cksum(%struct.msgbuf* %46)
  store i64 %47, i64* %7, align 8
  %48 = load i64, i64* %7, align 8
  %49 = load %struct.msgbuf*, %struct.msgbuf** %4, align 8
  %50 = getelementptr inbounds %struct.msgbuf, %struct.msgbuf* %49, i32 0, i32 2
  %51 = load i64, i64* %50, align 8
  %52 = icmp ne i64 %48, %51
  br i1 %52, label %53, label %66

53:                                               ; preds = %24
  %54 = load i64, i64* @bootverbose, align 8
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %63

56:                                               ; preds = %53
  %57 = load %struct.msgbuf*, %struct.msgbuf** %4, align 8
  %58 = getelementptr inbounds %struct.msgbuf, %struct.msgbuf* %57, i32 0, i32 2
  %59 = load i64, i64* %58, align 8
  %60 = load i64, i64* %7, align 8
  %61 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0), i64 %59, i64 %60)
  %62 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0))
  br label %63

63:                                               ; preds = %56, %53
  %64 = load %struct.msgbuf*, %struct.msgbuf** %4, align 8
  %65 = call i32 @msgbuf_clear(%struct.msgbuf* %64)
  br label %66

66:                                               ; preds = %63, %24
  %67 = load %struct.msgbuf*, %struct.msgbuf** %4, align 8
  %68 = getelementptr inbounds %struct.msgbuf, %struct.msgbuf* %67, i32 0, i32 3
  store i32 -1, i32* %68, align 8
  %69 = load i32, i32* @MSGBUF_NEEDNL, align 4
  %70 = load %struct.msgbuf*, %struct.msgbuf** %4, align 8
  %71 = getelementptr inbounds %struct.msgbuf, %struct.msgbuf* %70, i32 0, i32 5
  %72 = load i32, i32* %71, align 8
  %73 = or i32 %72, %69
  store i32 %73, i32* %71, align 8
  %74 = load %struct.msgbuf*, %struct.msgbuf** %4, align 8
  %75 = getelementptr inbounds %struct.msgbuf, %struct.msgbuf* %74, i32 0, i32 4
  %76 = call i32 @bzero(i32* %75, i32 4)
  %77 = load %struct.msgbuf*, %struct.msgbuf** %4, align 8
  %78 = getelementptr inbounds %struct.msgbuf, %struct.msgbuf* %77, i32 0, i32 4
  %79 = load i32, i32* @MTX_SPIN, align 4
  %80 = call i32 @mtx_init(i32* %78, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0), i32* null, i32 %79)
  br label %81

81:                                               ; preds = %66, %19
  ret void
}

declare dso_local i32 @msgbuf_init(%struct.msgbuf*, i8*, i32) #1

declare dso_local i32 @SEQMOD(i32) #1

declare dso_local i8* @MSGBUF_SEQNORM(%struct.msgbuf*, i8*) #1

declare dso_local i64 @msgbuf_cksum(%struct.msgbuf*) #1

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local i32 @msgbuf_clear(%struct.msgbuf*) #1

declare dso_local i32 @bzero(i32*, i32) #1

declare dso_local i32 @mtx_init(i32*, i8*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
