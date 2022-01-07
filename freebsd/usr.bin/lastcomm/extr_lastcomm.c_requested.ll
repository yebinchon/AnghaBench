; ModuleID = '/home/carl/AnghaBench/freebsd/usr.bin/lastcomm/extr_lastcomm.c_requested.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.bin/lastcomm/extr_lastcomm.c_requested.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.acctv3 = type { i32, i32, i32 }

@AC_COMM_LEN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @requested(i8** %0, %struct.acctv3* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8**, align 8
  %5 = alloca %struct.acctv3*, align 8
  %6 = alloca i8*, align 8
  store i8** %0, i8*** %4, align 8
  store %struct.acctv3* %1, %struct.acctv3** %5, align 8
  br label %7

7:                                                ; preds = %42, %2
  %8 = load %struct.acctv3*, %struct.acctv3** %5, align 8
  %9 = getelementptr inbounds %struct.acctv3, %struct.acctv3* %8, i32 0, i32 2
  %10 = load i32, i32* %9, align 4
  %11 = call i8* @user_from_uid(i32 %10, i32 0)
  store i8* %11, i8** %6, align 8
  %12 = load i8*, i8** %6, align 8
  %13 = load i8**, i8*** %4, align 8
  %14 = load i8*, i8** %13, align 8
  %15 = call i32 @strcmp(i8* %12, i8* %14)
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %18, label %17

17:                                               ; preds = %7
  store i32 1, i32* %3, align 4
  br label %48

18:                                               ; preds = %7
  %19 = load %struct.acctv3*, %struct.acctv3** %5, align 8
  %20 = getelementptr inbounds %struct.acctv3, %struct.acctv3* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = call i8* @getdev(i32 %21)
  store i8* %22, i8** %6, align 8
  %23 = icmp ne i8* %22, null
  br i1 %23, label %24, label %31

24:                                               ; preds = %18
  %25 = load i8*, i8** %6, align 8
  %26 = load i8**, i8*** %4, align 8
  %27 = load i8*, i8** %26, align 8
  %28 = call i32 @strcmp(i8* %25, i8* %27)
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %31, label %30

30:                                               ; preds = %24
  store i32 1, i32* %3, align 4
  br label %48

31:                                               ; preds = %24, %18
  %32 = load %struct.acctv3*, %struct.acctv3** %5, align 8
  %33 = getelementptr inbounds %struct.acctv3, %struct.acctv3* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = load i8**, i8*** %4, align 8
  %36 = load i8*, i8** %35, align 8
  %37 = load i32, i32* @AC_COMM_LEN, align 4
  %38 = call i32 @strncmp(i32 %34, i8* %36, i32 %37)
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %41, label %40

40:                                               ; preds = %31
  store i32 1, i32* %3, align 4
  br label %48

41:                                               ; preds = %31
  br label %42

42:                                               ; preds = %41
  %43 = load i8**, i8*** %4, align 8
  %44 = getelementptr inbounds i8*, i8** %43, i32 1
  store i8** %44, i8*** %4, align 8
  %45 = load i8*, i8** %44, align 8
  %46 = icmp ne i8* %45, null
  br i1 %46, label %7, label %47

47:                                               ; preds = %42
  store i32 0, i32* %3, align 4
  br label %48

48:                                               ; preds = %47, %40, %30, %17
  %49 = load i32, i32* %3, align 4
  ret i32 %49
}

declare dso_local i8* @user_from_uid(i32, i32) #1

declare dso_local i32 @strcmp(i8*, i8*) #1

declare dso_local i8* @getdev(i32) #1

declare dso_local i32 @strncmp(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
