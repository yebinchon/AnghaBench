; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/ppp/extr_command.c_FindCommand.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/ppp/extr_command.c_FindCommand.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cmdtab = type { i8*, i8*, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.cmdtab* (%struct.cmdtab*, i8*, i32*)* @FindCommand to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.cmdtab* @FindCommand(%struct.cmdtab* %0, i8* %1, i32* %2) #0 {
  %4 = alloca %struct.cmdtab*, align 8
  %5 = alloca %struct.cmdtab*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.cmdtab*, align 8
  store %struct.cmdtab* %0, %struct.cmdtab** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32* %2, i32** %7, align 8
  store %struct.cmdtab* null, %struct.cmdtab** %10, align 8
  %11 = load i8*, i8** %6, align 8
  %12 = call i32 @strlen(i8* %11)
  store i32 %12, i32* %9, align 4
  store i32 0, i32* %8, align 4
  br label %13

13:                                               ; preds = %79, %3
  %14 = load %struct.cmdtab*, %struct.cmdtab** %5, align 8
  %15 = getelementptr inbounds %struct.cmdtab, %struct.cmdtab* %14, i32 0, i32 2
  %16 = load i64, i64* %15, align 8
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %82

18:                                               ; preds = %13
  %19 = load %struct.cmdtab*, %struct.cmdtab** %5, align 8
  %20 = getelementptr inbounds %struct.cmdtab, %struct.cmdtab* %19, i32 0, i32 0
  %21 = load i8*, i8** %20, align 8
  %22 = icmp ne i8* %21, null
  br i1 %22, label %23, label %48

23:                                               ; preds = %18
  %24 = load i8*, i8** %6, align 8
  %25 = load %struct.cmdtab*, %struct.cmdtab** %5, align 8
  %26 = getelementptr inbounds %struct.cmdtab, %struct.cmdtab* %25, i32 0, i32 0
  %27 = load i8*, i8** %26, align 8
  %28 = load i32, i32* %9, align 4
  %29 = call i64 @strncasecmp(i8* %24, i8* %27, i32 %28)
  %30 = icmp eq i64 %29, 0
  br i1 %30, label %31, label %48

31:                                               ; preds = %23
  %32 = load %struct.cmdtab*, %struct.cmdtab** %5, align 8
  %33 = getelementptr inbounds %struct.cmdtab, %struct.cmdtab* %32, i32 0, i32 0
  %34 = load i8*, i8** %33, align 8
  %35 = load i32, i32* %9, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds i8, i8* %34, i64 %36
  %38 = load i8, i8* %37, align 1
  %39 = sext i8 %38 to i32
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %41, label %44

41:                                               ; preds = %31
  %42 = load i32*, i32** %7, align 8
  store i32 1, i32* %42, align 4
  %43 = load %struct.cmdtab*, %struct.cmdtab** %5, align 8
  store %struct.cmdtab* %43, %struct.cmdtab** %4, align 8
  br label %86

44:                                               ; preds = %31
  %45 = load i32, i32* %8, align 4
  %46 = add nsw i32 %45, 1
  store i32 %46, i32* %8, align 4
  %47 = load %struct.cmdtab*, %struct.cmdtab** %5, align 8
  store %struct.cmdtab* %47, %struct.cmdtab** %10, align 8
  br label %79

48:                                               ; preds = %23, %18
  %49 = load %struct.cmdtab*, %struct.cmdtab** %5, align 8
  %50 = getelementptr inbounds %struct.cmdtab, %struct.cmdtab* %49, i32 0, i32 1
  %51 = load i8*, i8** %50, align 8
  %52 = icmp ne i8* %51, null
  br i1 %52, label %53, label %78

53:                                               ; preds = %48
  %54 = load i8*, i8** %6, align 8
  %55 = load %struct.cmdtab*, %struct.cmdtab** %5, align 8
  %56 = getelementptr inbounds %struct.cmdtab, %struct.cmdtab* %55, i32 0, i32 1
  %57 = load i8*, i8** %56, align 8
  %58 = load i32, i32* %9, align 4
  %59 = call i64 @strncasecmp(i8* %54, i8* %57, i32 %58)
  %60 = icmp eq i64 %59, 0
  br i1 %60, label %61, label %78

61:                                               ; preds = %53
  %62 = load %struct.cmdtab*, %struct.cmdtab** %5, align 8
  %63 = getelementptr inbounds %struct.cmdtab, %struct.cmdtab* %62, i32 0, i32 1
  %64 = load i8*, i8** %63, align 8
  %65 = load i32, i32* %9, align 4
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds i8, i8* %64, i64 %66
  %68 = load i8, i8* %67, align 1
  %69 = sext i8 %68 to i32
  %70 = icmp eq i32 %69, 0
  br i1 %70, label %71, label %74

71:                                               ; preds = %61
  %72 = load i32*, i32** %7, align 8
  store i32 1, i32* %72, align 4
  %73 = load %struct.cmdtab*, %struct.cmdtab** %5, align 8
  store %struct.cmdtab* %73, %struct.cmdtab** %4, align 8
  br label %86

74:                                               ; preds = %61
  %75 = load i32, i32* %8, align 4
  %76 = add nsw i32 %75, 1
  store i32 %76, i32* %8, align 4
  %77 = load %struct.cmdtab*, %struct.cmdtab** %5, align 8
  store %struct.cmdtab* %77, %struct.cmdtab** %10, align 8
  br label %78

78:                                               ; preds = %74, %53, %48
  br label %79

79:                                               ; preds = %78, %44
  %80 = load %struct.cmdtab*, %struct.cmdtab** %5, align 8
  %81 = getelementptr inbounds %struct.cmdtab, %struct.cmdtab* %80, i32 1
  store %struct.cmdtab* %81, %struct.cmdtab** %5, align 8
  br label %13

82:                                               ; preds = %13
  %83 = load i32, i32* %8, align 4
  %84 = load i32*, i32** %7, align 8
  store i32 %83, i32* %84, align 4
  %85 = load %struct.cmdtab*, %struct.cmdtab** %10, align 8
  store %struct.cmdtab* %85, %struct.cmdtab** %4, align 8
  br label %86

86:                                               ; preds = %82, %71, %41
  %87 = load %struct.cmdtab*, %struct.cmdtab** %4, align 8
  ret %struct.cmdtab* %87
}

declare dso_local i32 @strlen(i8*) #1

declare dso_local i64 @strncasecmp(i8*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
