; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/ndiscvt/extr_ndiscvt.c_firmcvt.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/ndiscvt/extr_ndiscvt.c_firmcvt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [59 x i8] c"objcopy -I binary -O elf64-x86-64-freebsd -B i386 %s %s.o\0A\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.2 = private unnamed_addr constant [128 x i8] c"objcopy --redefine-sym _binary_%s_start=%s_start --strip-symbol _binary_%s_size --redefine-sym _binary_%s_end=%s_end %s.o %s.o\0A\00", align 1
@.str.3 = private unnamed_addr constant [46 x i8] c"ld -Bshareable -d -warn-common -o %s.ko %s.o\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @firmcvt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @firmcvt(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca [1024 x i8], align 16
  store i8* %0, i8** %2, align 8
  %7 = load i8*, i8** %2, align 8
  %8 = call i8* @basename(i8* %7)
  %9 = call i8* @strdup(i8* %8)
  store i8* %9, i8** %4, align 8
  %10 = load i8*, i8** %4, align 8
  %11 = call i8* @strdup(i8* %10)
  store i8* %11, i8** %3, align 8
  %12 = getelementptr inbounds [1024 x i8], [1024 x i8]* %6, i64 0, i64 0
  %13 = load i8*, i8** %2, align 8
  %14 = load i8*, i8** %4, align 8
  %15 = call i32 (i8*, i32, i8*, i8*, i8*, ...) @snprintf(i8* %12, i32 1024, i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str, i64 0, i64 0), i8* %13, i8* %14)
  %16 = getelementptr inbounds [1024 x i8], [1024 x i8]* %6, i64 0, i64 0
  %17 = call i32 @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i8* %16)
  %18 = getelementptr inbounds [1024 x i8], [1024 x i8]* %6, i64 0, i64 0
  %19 = call i32 @system(i8* %18)
  %20 = load i8*, i8** %2, align 8
  store i8* %20, i8** %5, align 8
  br label %21

21:                                               ; preds = %37, %1
  %22 = load i8*, i8** %5, align 8
  %23 = load i8, i8* %22, align 1
  %24 = icmp ne i8 %23, 0
  br i1 %24, label %25, label %40

25:                                               ; preds = %21
  %26 = load i8*, i8** %5, align 8
  %27 = load i8, i8* %26, align 1
  %28 = sext i8 %27 to i32
  %29 = icmp eq i32 %28, 47
  br i1 %29, label %35, label %30

30:                                               ; preds = %25
  %31 = load i8*, i8** %5, align 8
  %32 = load i8, i8* %31, align 1
  %33 = sext i8 %32 to i32
  %34 = icmp eq i32 %33, 46
  br i1 %34, label %35, label %37

35:                                               ; preds = %30, %25
  %36 = load i8*, i8** %5, align 8
  store i8 95, i8* %36, align 1
  br label %37

37:                                               ; preds = %35, %30
  %38 = load i8*, i8** %5, align 8
  %39 = getelementptr inbounds i8, i8* %38, i32 1
  store i8* %39, i8** %5, align 8
  br label %21

40:                                               ; preds = %21
  %41 = load i8*, i8** %3, align 8
  store i8* %41, i8** %5, align 8
  br label %42

42:                                               ; preds = %63, %40
  %43 = load i8*, i8** %5, align 8
  %44 = load i8, i8* %43, align 1
  %45 = icmp ne i8 %44, 0
  br i1 %45, label %46, label %66

46:                                               ; preds = %42
  %47 = load i8*, i8** %5, align 8
  %48 = load i8, i8* %47, align 1
  %49 = sext i8 %48 to i32
  %50 = icmp eq i32 %49, 47
  br i1 %50, label %56, label %51

51:                                               ; preds = %46
  %52 = load i8*, i8** %5, align 8
  %53 = load i8, i8* %52, align 1
  %54 = sext i8 %53 to i32
  %55 = icmp eq i32 %54, 46
  br i1 %55, label %56, label %58

56:                                               ; preds = %51, %46
  %57 = load i8*, i8** %5, align 8
  store i8 95, i8* %57, align 1
  br label %63

58:                                               ; preds = %51
  %59 = load i8*, i8** %5, align 8
  %60 = load i8, i8* %59, align 1
  %61 = call signext i8 @tolower(i8 signext %60)
  %62 = load i8*, i8** %5, align 8
  store i8 %61, i8* %62, align 1
  br label %63

63:                                               ; preds = %58, %56
  %64 = load i8*, i8** %5, align 8
  %65 = getelementptr inbounds i8, i8* %64, i32 1
  store i8* %65, i8** %5, align 8
  br label %42

66:                                               ; preds = %42
  %67 = getelementptr inbounds [1024 x i8], [1024 x i8]* %6, i64 0, i64 0
  %68 = load i8*, i8** %2, align 8
  %69 = load i8*, i8** %3, align 8
  %70 = load i8*, i8** %2, align 8
  %71 = load i8*, i8** %2, align 8
  %72 = load i8*, i8** %3, align 8
  %73 = load i8*, i8** %4, align 8
  %74 = load i8*, i8** %4, align 8
  %75 = call i32 (i8*, i32, i8*, i8*, i8*, ...) @snprintf(i8* %67, i32 1024, i8* getelementptr inbounds ([128 x i8], [128 x i8]* @.str.2, i64 0, i64 0), i8* %68, i8* %69, i8* %70, i8* %71, i8* %72, i8* %73, i8* %74)
  %76 = getelementptr inbounds [1024 x i8], [1024 x i8]* %6, i64 0, i64 0
  store i8* %76, i8** %5, align 8
  %77 = getelementptr inbounds [1024 x i8], [1024 x i8]* %6, i64 0, i64 0
  %78 = call i32 @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i8* %77)
  %79 = getelementptr inbounds [1024 x i8], [1024 x i8]* %6, i64 0, i64 0
  %80 = call i32 @system(i8* %79)
  %81 = getelementptr inbounds [1024 x i8], [1024 x i8]* %6, i64 0, i64 0
  %82 = load i8*, i8** %4, align 8
  %83 = load i8*, i8** %4, align 8
  %84 = call i32 (i8*, i32, i8*, i8*, i8*, ...) @snprintf(i8* %81, i32 1024, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.3, i64 0, i64 0), i8* %82, i8* %83)
  %85 = getelementptr inbounds [1024 x i8], [1024 x i8]* %6, i64 0, i64 0
  %86 = call i32 @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i8* %85)
  %87 = getelementptr inbounds [1024 x i8], [1024 x i8]* %6, i64 0, i64 0
  %88 = call i32 @system(i8* %87)
  %89 = load i8*, i8** %3, align 8
  %90 = call i32 @free(i8* %89)
  %91 = call i32 @exit(i32 0) #3
  unreachable
}

declare dso_local i8* @strdup(i8*) #1

declare dso_local i8* @basename(i8*) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i8*, i8*, ...) #1

declare dso_local i32 @printf(i8*, i8*) #1

declare dso_local i32 @system(i8*) #1

declare dso_local signext i8 @tolower(i8 signext) #1

declare dso_local i32 @free(i8*) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
