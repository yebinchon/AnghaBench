; ModuleID = '/home/carl/AnghaBench/freebsd/usr.bin/mail/extr_fio.c_makemessage.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.bin/mail/extr_fio.c_makemessage.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.message = type { i64, i64 }

@msgCount = common dso_local global i32 0, align 4
@message = common dso_local global %struct.message* null, align 8
@.str = private unnamed_addr constant [37 x i8] c"Insufficient memory for %d messages\0A\00", align 1
@dot = common dso_local global %struct.message* null, align 8
@.str.1 = private unnamed_addr constant [33 x i8] c"Message temporary file corrupted\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @makemessage(i32* %0, i32 %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca %struct.message*, align 8
  store i32* %0, i32** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load i32, i32* @msgCount, align 4
  %8 = add nsw i32 %7, 1
  %9 = sext i32 %8 to i64
  %10 = mul i64 %9, 16
  store i64 %10, i64* %5, align 8
  %11 = load %struct.message*, %struct.message** @message, align 8
  %12 = load i64, i64* %5, align 8
  %13 = call i64 @realloc(%struct.message* %11, i64 %12)
  %14 = inttoptr i64 %13 to %struct.message*
  store %struct.message* %14, %struct.message** %6, align 8
  %15 = load %struct.message*, %struct.message** %6, align 8
  %16 = icmp eq %struct.message* %15, null
  br i1 %16, label %17, label %20

17:                                               ; preds = %2
  %18 = load i32, i32* @msgCount, align 4
  %19 = call i32 (i32, i8*, ...) @errx(i32 1, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0), i32 %18)
  br label %20

20:                                               ; preds = %17, %2
  %21 = load i32, i32* %4, align 4
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %26, label %23

23:                                               ; preds = %20
  %24 = load %struct.message*, %struct.message** @message, align 8
  %25 = icmp eq %struct.message* %24, null
  br i1 %25, label %26, label %28

26:                                               ; preds = %23, %20
  %27 = load %struct.message*, %struct.message** %6, align 8
  store %struct.message* %27, %struct.message** @dot, align 8
  br label %37

28:                                               ; preds = %23
  %29 = load %struct.message*, %struct.message** %6, align 8
  %30 = load %struct.message*, %struct.message** @dot, align 8
  %31 = load %struct.message*, %struct.message** @message, align 8
  %32 = ptrtoint %struct.message* %30 to i64
  %33 = ptrtoint %struct.message* %31 to i64
  %34 = sub i64 %32, %33
  %35 = sdiv exact i64 %34, 16
  %36 = getelementptr inbounds %struct.message, %struct.message* %29, i64 %35
  store %struct.message* %36, %struct.message** @dot, align 8
  br label %37

37:                                               ; preds = %28, %26
  %38 = load %struct.message*, %struct.message** %6, align 8
  store %struct.message* %38, %struct.message** @message, align 8
  %39 = load i32, i32* %4, align 4
  %40 = add nsw i32 %39, 1
  %41 = sext i32 %40 to i64
  %42 = mul i64 %41, 16
  %43 = load i64, i64* %5, align 8
  %44 = sub i64 %43, %42
  store i64 %44, i64* %5, align 8
  %45 = load i32*, i32** %3, align 8
  %46 = call i32 @fflush(i32* %45)
  %47 = load i32*, i32** %3, align 8
  %48 = call i32 @fileno(i32* %47)
  %49 = call i32 @lseek(i32 %48, i32 16, i32 0)
  %50 = load i32*, i32** %3, align 8
  %51 = call i32 @fileno(i32* %50)
  %52 = load %struct.message*, %struct.message** @message, align 8
  %53 = load i32, i32* %4, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds %struct.message, %struct.message* %52, i64 %54
  %56 = bitcast %struct.message* %55 to i8*
  %57 = load i64, i64* %5, align 8
  %58 = call i64 @read(i32 %51, i8* %56, i64 %57)
  %59 = load i64, i64* %5, align 8
  %60 = icmp ne i64 %58, %59
  br i1 %60, label %61, label %63

61:                                               ; preds = %37
  %62 = call i32 (i32, i8*, ...) @errx(i32 1, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0))
  br label %63

63:                                               ; preds = %61, %37
  %64 = load %struct.message*, %struct.message** @message, align 8
  %65 = load i32, i32* @msgCount, align 4
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds %struct.message, %struct.message* %64, i64 %66
  %68 = getelementptr inbounds %struct.message, %struct.message* %67, i32 0, i32 1
  store i64 0, i64* %68, align 8
  %69 = load %struct.message*, %struct.message** @message, align 8
  %70 = load i32, i32* @msgCount, align 4
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds %struct.message, %struct.message* %69, i64 %71
  %73 = getelementptr inbounds %struct.message, %struct.message* %72, i32 0, i32 0
  store i64 0, i64* %73, align 8
  %74 = load i32*, i32** %3, align 8
  %75 = call i32 @Fclose(i32* %74)
  ret void
}

declare dso_local i64 @realloc(%struct.message*, i64) #1

declare dso_local i32 @errx(i32, i8*, ...) #1

declare dso_local i32 @fflush(i32*) #1

declare dso_local i32 @lseek(i32, i32, i32) #1

declare dso_local i32 @fileno(i32*) #1

declare dso_local i64 @read(i32, i8*, i64) #1

declare dso_local i32 @Fclose(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
