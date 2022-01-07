; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/pkg/extr_pkg.c_parse_cert.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/pkg/extr_pkg.c_parse_cert.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sig_cert = type { i32, i32, i8*, i8* }
%struct.sbuf = type { i32 }

@.str = private unnamed_addr constant [6 x i8] c"lseek\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"dup\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"rb\00", align 1
@.str.3 = private unnamed_addr constant [7 x i8] c"fdopen\00", align 1
@.str.4 = private unnamed_addr constant [11 x i8] c"SIGNATURE\0A\00", align 1
@.str.5 = private unnamed_addr constant [6 x i8] c"CERT\0A\00", align 1
@.str.6 = private unnamed_addr constant [5 x i8] c"END\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.sig_cert* (i32)* @parse_cert to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.sig_cert* @parse_cert(i32 %0) #0 {
  %2 = alloca %struct.sig_cert*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.sig_cert*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.sbuf*, align 8
  %8 = alloca %struct.sbuf*, align 8
  %9 = alloca %struct.sbuf*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store %struct.sbuf* null, %struct.sbuf** %7, align 8
  store i32 -1, i32* %4, align 4
  store %struct.sig_cert* null, %struct.sig_cert** %5, align 8
  store i8* null, i8** %10, align 8
  store i64 0, i64* %11, align 8
  %13 = load i32, i32* %3, align 4
  %14 = call i32 @lseek(i32 %13, i32 0, i32 0)
  %15 = icmp eq i32 %14, -1
  br i1 %15, label %16, label %18

16:                                               ; preds = %1
  %17 = call i32 @warn(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0))
  store %struct.sig_cert* null, %struct.sig_cert** %2, align 8
  br label %115

18:                                               ; preds = %1
  %19 = load i32, i32* %3, align 4
  %20 = call i32 @dup(i32 %19)
  store i32 %20, i32* %4, align 4
  %21 = icmp eq i32 %20, -1
  br i1 %21, label %22, label %24

22:                                               ; preds = %18
  %23 = call i32 @warnx(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0))
  store %struct.sig_cert* null, %struct.sig_cert** %2, align 8
  br label %115

24:                                               ; preds = %18
  %25 = load i32, i32* %4, align 4
  %26 = call i32* @fdopen(i32 %25, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0))
  store i32* %26, i32** %6, align 8
  %27 = icmp eq i32* %26, null
  br i1 %27, label %28, label %32

28:                                               ; preds = %24
  %29 = call i32 @warn(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0))
  %30 = load i32, i32* %4, align 4
  %31 = call i32 @close(i32 %30)
  store %struct.sig_cert* null, %struct.sig_cert** %2, align 8
  br label %115

32:                                               ; preds = %24
  %33 = call %struct.sbuf* (...) @sbuf_new_auto()
  store %struct.sbuf* %33, %struct.sbuf** %8, align 8
  %34 = call %struct.sbuf* (...) @sbuf_new_auto()
  store %struct.sbuf* %34, %struct.sbuf** %9, align 8
  br label %35

35:                                               ; preds = %66, %49, %43, %32
  %36 = load i32*, i32** %6, align 8
  %37 = call i32 @getline(i8** %10, i64* %11, i32* %36)
  store i32 %37, i32* %12, align 4
  %38 = icmp sgt i32 %37, 0
  br i1 %38, label %39, label %67

39:                                               ; preds = %35
  %40 = load i8*, i8** %10, align 8
  %41 = call i64 @strcmp(i8* %40, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i64 0, i64 0))
  %42 = icmp eq i64 %41, 0
  br i1 %42, label %43, label %45

43:                                               ; preds = %39
  %44 = load %struct.sbuf*, %struct.sbuf** %8, align 8
  store %struct.sbuf* %44, %struct.sbuf** %7, align 8
  br label %35

45:                                               ; preds = %39
  %46 = load i8*, i8** %10, align 8
  %47 = call i64 @strcmp(i8* %46, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i64 0, i64 0))
  %48 = icmp eq i64 %47, 0
  br i1 %48, label %49, label %51

49:                                               ; preds = %45
  %50 = load %struct.sbuf*, %struct.sbuf** %9, align 8
  store %struct.sbuf* %50, %struct.sbuf** %7, align 8
  br label %35

51:                                               ; preds = %45
  %52 = load i8*, i8** %10, align 8
  %53 = call i64 @strcmp(i8* %52, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i64 0, i64 0))
  %54 = icmp eq i64 %53, 0
  br i1 %54, label %55, label %56

55:                                               ; preds = %51
  br label %67

56:                                               ; preds = %51
  br label %57

57:                                               ; preds = %56
  br label %58

58:                                               ; preds = %57
  %59 = load %struct.sbuf*, %struct.sbuf** %7, align 8
  %60 = icmp ne %struct.sbuf* %59, null
  br i1 %60, label %61, label %66

61:                                               ; preds = %58
  %62 = load %struct.sbuf*, %struct.sbuf** %7, align 8
  %63 = load i8*, i8** %10, align 8
  %64 = load i32, i32* %12, align 4
  %65 = call i32 @sbuf_bcat(%struct.sbuf* %62, i8* %63, i32 %64)
  br label %66

66:                                               ; preds = %61, %58
  br label %35

67:                                               ; preds = %55, %35
  %68 = load i32*, i32** %6, align 8
  %69 = call i32 @fclose(i32* %68)
  %70 = load %struct.sbuf*, %struct.sbuf** %8, align 8
  %71 = load %struct.sbuf*, %struct.sbuf** %8, align 8
  %72 = call i8* @sbuf_len(%struct.sbuf* %71)
  %73 = getelementptr i8, i8* %72, i64 -1
  %74 = call i32 @sbuf_setpos(%struct.sbuf* %70, i8* %73)
  %75 = load %struct.sbuf*, %struct.sbuf** %8, align 8
  %76 = call i32 @sbuf_finish(%struct.sbuf* %75)
  %77 = load %struct.sbuf*, %struct.sbuf** %9, align 8
  %78 = call i32 @sbuf_finish(%struct.sbuf* %77)
  %79 = call i8* @calloc(i32 1, i32 24)
  %80 = bitcast i8* %79 to %struct.sig_cert*
  store %struct.sig_cert* %80, %struct.sig_cert** %5, align 8
  %81 = load %struct.sbuf*, %struct.sbuf** %8, align 8
  %82 = call i8* @sbuf_len(%struct.sbuf* %81)
  %83 = ptrtoint i8* %82 to i32
  %84 = load %struct.sig_cert*, %struct.sig_cert** %5, align 8
  %85 = getelementptr inbounds %struct.sig_cert, %struct.sig_cert* %84, i32 0, i32 0
  store i32 %83, i32* %85, align 8
  %86 = load %struct.sig_cert*, %struct.sig_cert** %5, align 8
  %87 = getelementptr inbounds %struct.sig_cert, %struct.sig_cert* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 8
  %89 = call i8* @calloc(i32 1, i32 %88)
  %90 = load %struct.sig_cert*, %struct.sig_cert** %5, align 8
  %91 = getelementptr inbounds %struct.sig_cert, %struct.sig_cert* %90, i32 0, i32 3
  store i8* %89, i8** %91, align 8
  %92 = load %struct.sig_cert*, %struct.sig_cert** %5, align 8
  %93 = getelementptr inbounds %struct.sig_cert, %struct.sig_cert* %92, i32 0, i32 3
  %94 = load i8*, i8** %93, align 8
  %95 = load %struct.sbuf*, %struct.sbuf** %8, align 8
  %96 = call i32 @sbuf_data(%struct.sbuf* %95)
  %97 = load %struct.sig_cert*, %struct.sig_cert** %5, align 8
  %98 = getelementptr inbounds %struct.sig_cert, %struct.sig_cert* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 8
  %100 = call i32 @memcpy(i8* %94, i32 %96, i32 %99)
  %101 = load %struct.sbuf*, %struct.sbuf** %9, align 8
  %102 = call i8* @sbuf_len(%struct.sbuf* %101)
  %103 = load %struct.sig_cert*, %struct.sig_cert** %5, align 8
  %104 = getelementptr inbounds %struct.sig_cert, %struct.sig_cert* %103, i32 0, i32 2
  store i8* %102, i8** %104, align 8
  %105 = load %struct.sbuf*, %struct.sbuf** %9, align 8
  %106 = call i32 @sbuf_data(%struct.sbuf* %105)
  %107 = call i32 @strdup(i32 %106)
  %108 = load %struct.sig_cert*, %struct.sig_cert** %5, align 8
  %109 = getelementptr inbounds %struct.sig_cert, %struct.sig_cert* %108, i32 0, i32 1
  store i32 %107, i32* %109, align 4
  %110 = load %struct.sbuf*, %struct.sbuf** %8, align 8
  %111 = call i32 @sbuf_delete(%struct.sbuf* %110)
  %112 = load %struct.sbuf*, %struct.sbuf** %9, align 8
  %113 = call i32 @sbuf_delete(%struct.sbuf* %112)
  %114 = load %struct.sig_cert*, %struct.sig_cert** %5, align 8
  store %struct.sig_cert* %114, %struct.sig_cert** %2, align 8
  br label %115

115:                                              ; preds = %67, %28, %22, %16
  %116 = load %struct.sig_cert*, %struct.sig_cert** %2, align 8
  ret %struct.sig_cert* %116
}

declare dso_local i32 @lseek(i32, i32, i32) #1

declare dso_local i32 @warn(i8*) #1

declare dso_local i32 @dup(i32) #1

declare dso_local i32 @warnx(i8*) #1

declare dso_local i32* @fdopen(i32, i8*) #1

declare dso_local i32 @close(i32) #1

declare dso_local %struct.sbuf* @sbuf_new_auto(...) #1

declare dso_local i32 @getline(i8**, i64*, i32*) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i32 @sbuf_bcat(%struct.sbuf*, i8*, i32) #1

declare dso_local i32 @fclose(i32*) #1

declare dso_local i32 @sbuf_setpos(%struct.sbuf*, i8*) #1

declare dso_local i8* @sbuf_len(%struct.sbuf*) #1

declare dso_local i32 @sbuf_finish(%struct.sbuf*) #1

declare dso_local i8* @calloc(i32, i32) #1

declare dso_local i32 @memcpy(i8*, i32, i32) #1

declare dso_local i32 @sbuf_data(%struct.sbuf*) #1

declare dso_local i32 @strdup(i32) #1

declare dso_local i32 @sbuf_delete(%struct.sbuf*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
