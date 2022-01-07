; ModuleID = '/home/carl/AnghaBench/freebsd/usr.bin/rpcgen/extr_rpc_cout.c_emit_single_in_line.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.bin/rpcgen/extr_rpc_cout.c_emit_single_in_line.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i8*, i32 }

@fout = common dso_local global i32 0, align 4
@PUT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [10 x i8] c"IXDR_PUT_\00", align 1
@REL_ALIAS = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [21 x i8] c"objp->%s = IXDR_GET_\00", align 1
@.str.2 = private unnamed_addr constant [20 x i8] c"*genp++ = IXDR_GET_\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"INT\00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"LONG\00", align 1
@.str.5 = private unnamed_addr constant [6 x i8] c"U_INT\00", align 1
@.str.6 = private unnamed_addr constant [7 x i8] c"U_LONG\00", align 1
@.str.7 = private unnamed_addr constant [20 x i8] c"%s(buf, objp->%s);\0A\00", align 1
@.str.8 = private unnamed_addr constant [19 x i8] c"%s(buf, *genp++);\0A\00", align 1
@.str.9 = private unnamed_addr constant [10 x i8] c"%s(buf);\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, %struct.TYPE_3__*, i32, i64)* @emit_single_in_line to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @emit_single_in_line(i32 %0, %struct.TYPE_3__* %1, i32 %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_3__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i8*, align 8
  store i32 %0, i32* %5, align 4
  store %struct.TYPE_3__* %1, %struct.TYPE_3__** %6, align 8
  store i32 %2, i32* %7, align 4
  store i64 %3, i64* %8, align 8
  %10 = load i32, i32* @fout, align 4
  %11 = load i32, i32* %5, align 4
  %12 = call i32 @tabify(i32 %10, i32 %11)
  %13 = load i32, i32* %7, align 4
  %14 = load i32, i32* @PUT, align 4
  %15 = icmp eq i32 %13, %14
  br i1 %15, label %16, label %19

16:                                               ; preds = %4
  %17 = load i32, i32* @fout, align 4
  %18 = call i32 (i32, i8*, ...) @f_print(i32 %17, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0))
  br label %33

19:                                               ; preds = %4
  %20 = load i64, i64* %8, align 8
  %21 = load i64, i64* @REL_ALIAS, align 8
  %22 = icmp eq i64 %20, %21
  br i1 %22, label %23, label %29

23:                                               ; preds = %19
  %24 = load i32, i32* @fout, align 4
  %25 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %26 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %25, i32 0, i32 0
  %27 = load i8*, i8** %26, align 8
  %28 = call i32 (i32, i8*, ...) @f_print(i32 %24, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0), i8* %27)
  br label %32

29:                                               ; preds = %19
  %30 = load i32, i32* @fout, align 4
  %31 = call i32 (i32, i8*, ...) @f_print(i32 %30, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i64 0, i64 0))
  br label %32

32:                                               ; preds = %29, %23
  br label %33

33:                                               ; preds = %32, %16
  %34 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %35 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 8
  %37 = call i8* @upcase(i32 %36)
  store i8* %37, i8** %9, align 8
  %38 = load i8*, i8** %9, align 8
  %39 = call i64 @strcmp(i8* %38, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0))
  %40 = icmp eq i64 %39, 0
  br i1 %40, label %41, label %45

41:                                               ; preds = %33
  %42 = load i8*, i8** %9, align 8
  %43 = call i32 @free(i8* %42)
  %44 = call i8* @strdup(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0))
  store i8* %44, i8** %9, align 8
  br label %45

45:                                               ; preds = %41, %33
  %46 = load i8*, i8** %9, align 8
  %47 = call i64 @strcmp(i8* %46, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i64 0, i64 0))
  %48 = icmp eq i64 %47, 0
  br i1 %48, label %49, label %53

49:                                               ; preds = %45
  %50 = load i8*, i8** %9, align 8
  %51 = call i32 @free(i8* %50)
  %52 = call i8* @strdup(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6, i64 0, i64 0))
  store i8* %52, i8** %9, align 8
  br label %53

53:                                               ; preds = %49, %45
  %54 = load i32, i32* %7, align 4
  %55 = load i32, i32* @PUT, align 4
  %56 = icmp eq i32 %54, %55
  br i1 %56, label %57, label %73

57:                                               ; preds = %53
  %58 = load i64, i64* %8, align 8
  %59 = load i64, i64* @REL_ALIAS, align 8
  %60 = icmp eq i64 %58, %59
  br i1 %60, label %61, label %68

61:                                               ; preds = %57
  %62 = load i32, i32* @fout, align 4
  %63 = load i8*, i8** %9, align 8
  %64 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %65 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %64, i32 0, i32 0
  %66 = load i8*, i8** %65, align 8
  %67 = call i32 (i32, i8*, ...) @f_print(i32 %62, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.7, i64 0, i64 0), i8* %63, i8* %66)
  br label %72

68:                                               ; preds = %57
  %69 = load i32, i32* @fout, align 4
  %70 = load i8*, i8** %9, align 8
  %71 = call i32 (i32, i8*, ...) @f_print(i32 %69, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.8, i64 0, i64 0), i8* %70)
  br label %72

72:                                               ; preds = %68, %61
  br label %77

73:                                               ; preds = %53
  %74 = load i32, i32* @fout, align 4
  %75 = load i8*, i8** %9, align 8
  %76 = call i32 (i32, i8*, ...) @f_print(i32 %74, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.9, i64 0, i64 0), i8* %75)
  br label %77

77:                                               ; preds = %73, %72
  %78 = load i8*, i8** %9, align 8
  %79 = call i32 @free(i8* %78)
  ret void
}

declare dso_local i32 @tabify(i32, i32) #1

declare dso_local i32 @f_print(i32, i8*, ...) #1

declare dso_local i8* @upcase(i32) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i8* @strdup(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
