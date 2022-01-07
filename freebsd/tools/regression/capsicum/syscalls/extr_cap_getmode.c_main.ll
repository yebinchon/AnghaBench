; ModuleID = '/home/carl/AnghaBench/freebsd/tools/regression/capsicum/syscalls/extr_cap_getmode.c_main.c'
source_filename = "/home/carl/AnghaBench/freebsd/tools/regression/capsicum/syscalls/extr_cap_getmode.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [7 x i8] c"1..27\0A\00", align 1
@errno = common dso_local global i64 0, align 8
@EFAULT = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [14 x i8] c"fork() failed\00", align 1
@.str.2 = private unnamed_addr constant [17 x i8] c"waitpid() failed\00", align 1
@.str.3 = private unnamed_addr constant [16 x i8] c"pdfork() failed\00", align 1
@.str.4 = private unnamed_addr constant [16 x i8] c"pdwait() failed\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  %5 = call i32 @printf(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  store i32 666, i32* %2, align 4
  %6 = call i64 @cap_getmode(i32* %2)
  %7 = icmp eq i64 %6, 0
  %8 = zext i1 %7 to i32
  %9 = call i32 @CHECK(i32 %8)
  %10 = load i32, i32* %2, align 4
  %11 = icmp ne i32 %10, 666
  %12 = zext i1 %11 to i32
  %13 = call i32 @CHECK(i32 %12)
  %14 = load i32, i32* %2, align 4
  %15 = icmp eq i32 %14, 0
  %16 = zext i1 %15 to i32
  %17 = call i32 @CHECK(i32 %16)
  store i64 0, i64* @errno, align 8
  %18 = call i64 @cap_getmode(i32* null)
  %19 = icmp eq i64 %18, -1
  %20 = zext i1 %19 to i32
  %21 = call i32 @CHECK(i32 %20)
  %22 = load i64, i64* @errno, align 8
  %23 = load i64, i64* @EFAULT, align 8
  %24 = icmp eq i64 %22, %23
  %25 = zext i1 %24 to i32
  %26 = call i32 @CHECK(i32 %25)
  store i64 0, i64* @errno, align 8
  %27 = call i64 @cap_getmode(i32* inttoptr (i64 3735929054 to i32*))
  %28 = icmp eq i64 %27, -1
  %29 = zext i1 %28 to i32
  %30 = call i32 @CHECK(i32 %29)
  %31 = load i64, i64* @errno, align 8
  %32 = load i64, i64* @EFAULT, align 8
  %33 = icmp eq i64 %31, %32
  %34 = zext i1 %33 to i32
  %35 = call i32 @CHECK(i32 %34)
  %36 = call i32 (...) @fork()
  store i32 %36, i32* %3, align 4
  %37 = load i32, i32* %3, align 4
  switch i32 %37, label %54 [
    i32 -1, label %38
    i32 0, label %40
  ]

38:                                               ; preds = %0
  %39 = call i32 @err(i32 1, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0))
  br label %40

40:                                               ; preds = %0, %38
  store i32 666, i32* %2, align 4
  %41 = call i64 @cap_getmode(i32* %2)
  %42 = icmp eq i64 %41, 0
  %43 = zext i1 %42 to i32
  %44 = call i32 @CHECK(i32 %43)
  %45 = load i32, i32* %2, align 4
  %46 = icmp ne i32 %45, 666
  %47 = zext i1 %46 to i32
  %48 = call i32 @CHECK(i32 %47)
  %49 = load i32, i32* %2, align 4
  %50 = icmp eq i32 %49, 0
  %51 = zext i1 %50 to i32
  %52 = call i32 @CHECK(i32 %51)
  %53 = call i32 @exit(i32 0) #3
  unreachable

54:                                               ; preds = %0
  %55 = load i32, i32* %3, align 4
  %56 = call i32 @waitpid(i32 %55, i32* null, i32 0)
  %57 = icmp eq i32 %56, -1
  br i1 %57, label %58, label %60

58:                                               ; preds = %54
  %59 = call i32 @err(i32 1, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.2, i64 0, i64 0))
  br label %60

60:                                               ; preds = %58, %54
  br label %61

61:                                               ; preds = %60
  %62 = call i32 @pdfork(i32* %4, i32 0)
  store i32 %62, i32* %3, align 4
  %63 = load i32, i32* %3, align 4
  switch i32 %63, label %80 [
    i32 -1, label %64
    i32 0, label %66
  ]

64:                                               ; preds = %61
  %65 = call i32 @err(i32 1, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.3, i64 0, i64 0))
  br label %66

66:                                               ; preds = %61, %64
  store i32 666, i32* %2, align 4
  %67 = call i64 @cap_getmode(i32* %2)
  %68 = icmp eq i64 %67, 0
  %69 = zext i1 %68 to i32
  %70 = call i32 @CHECK(i32 %69)
  %71 = load i32, i32* %2, align 4
  %72 = icmp ne i32 %71, 666
  %73 = zext i1 %72 to i32
  %74 = call i32 @CHECK(i32 %73)
  %75 = load i32, i32* %2, align 4
  %76 = icmp eq i32 %75, 0
  %77 = zext i1 %76 to i32
  %78 = call i32 @CHECK(i32 %77)
  %79 = call i32 @exit(i32 0) #3
  unreachable

80:                                               ; preds = %61
  %81 = load i32, i32* %4, align 4
  %82 = call i32 @pdwait(i32 %81)
  %83 = icmp eq i32 %82, -1
  br i1 %83, label %84, label %86

84:                                               ; preds = %80
  %85 = call i32 @err(i32 1, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.4, i64 0, i64 0))
  br label %86

86:                                               ; preds = %84, %80
  %87 = load i32, i32* %4, align 4
  %88 = call i32 @close(i32 %87)
  br label %89

89:                                               ; preds = %86
  %90 = call i64 (...) @cap_enter()
  %91 = icmp eq i64 %90, 0
  %92 = zext i1 %91 to i32
  %93 = call i32 @CHECK(i32 %92)
  store i32 666, i32* %2, align 4
  %94 = call i64 @cap_getmode(i32* %2)
  %95 = icmp eq i64 %94, 0
  %96 = zext i1 %95 to i32
  %97 = call i32 @CHECK(i32 %96)
  %98 = load i32, i32* %2, align 4
  %99 = icmp ne i32 %98, 666
  %100 = zext i1 %99 to i32
  %101 = call i32 @CHECK(i32 %100)
  %102 = load i32, i32* %2, align 4
  %103 = icmp eq i32 %102, 1
  %104 = zext i1 %103 to i32
  %105 = call i32 @CHECK(i32 %104)
  store i64 0, i64* @errno, align 8
  %106 = call i64 @cap_getmode(i32* null)
  %107 = icmp eq i64 %106, -1
  %108 = zext i1 %107 to i32
  %109 = call i32 @CHECK(i32 %108)
  %110 = load i64, i64* @errno, align 8
  %111 = load i64, i64* @EFAULT, align 8
  %112 = icmp eq i64 %110, %111
  %113 = zext i1 %112 to i32
  %114 = call i32 @CHECK(i32 %113)
  store i64 0, i64* @errno, align 8
  %115 = call i64 @cap_getmode(i32* inttoptr (i64 3735929054 to i32*))
  %116 = icmp eq i64 %115, -1
  %117 = zext i1 %116 to i32
  %118 = call i32 @CHECK(i32 %117)
  %119 = load i64, i64* @errno, align 8
  %120 = load i64, i64* @EFAULT, align 8
  %121 = icmp eq i64 %119, %120
  %122 = zext i1 %121 to i32
  %123 = call i32 @CHECK(i32 %122)
  %124 = call i32 (...) @fork()
  store i32 %124, i32* %3, align 4
  %125 = load i32, i32* %3, align 4
  switch i32 %125, label %142 [
    i32 -1, label %126
    i32 0, label %128
  ]

126:                                              ; preds = %89
  %127 = call i32 @err(i32 1, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0))
  br label %128

128:                                              ; preds = %89, %126
  store i32 666, i32* %2, align 4
  %129 = call i64 @cap_getmode(i32* %2)
  %130 = icmp eq i64 %129, 0
  %131 = zext i1 %130 to i32
  %132 = call i32 @CHECK(i32 %131)
  %133 = load i32, i32* %2, align 4
  %134 = icmp ne i32 %133, 666
  %135 = zext i1 %134 to i32
  %136 = call i32 @CHECK(i32 %135)
  %137 = load i32, i32* %2, align 4
  %138 = icmp eq i32 %137, 1
  %139 = zext i1 %138 to i32
  %140 = call i32 @CHECK(i32 %139)
  %141 = call i32 @exit(i32 0) #3
  unreachable

142:                                              ; preds = %89
  %143 = call i32 @sleep(i32 1)
  br label %144

144:                                              ; preds = %142
  %145 = call i32 @pdfork(i32* %4, i32 0)
  store i32 %145, i32* %3, align 4
  %146 = load i32, i32* %3, align 4
  switch i32 %146, label %163 [
    i32 -1, label %147
    i32 0, label %149
  ]

147:                                              ; preds = %144
  %148 = call i32 @err(i32 1, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.3, i64 0, i64 0))
  br label %149

149:                                              ; preds = %144, %147
  store i32 666, i32* %2, align 4
  %150 = call i64 @cap_getmode(i32* %2)
  %151 = icmp eq i64 %150, 0
  %152 = zext i1 %151 to i32
  %153 = call i32 @CHECK(i32 %152)
  %154 = load i32, i32* %2, align 4
  %155 = icmp ne i32 %154, 666
  %156 = zext i1 %155 to i32
  %157 = call i32 @CHECK(i32 %156)
  %158 = load i32, i32* %2, align 4
  %159 = icmp eq i32 %158, 1
  %160 = zext i1 %159 to i32
  %161 = call i32 @CHECK(i32 %160)
  %162 = call i32 @exit(i32 0) #3
  unreachable

163:                                              ; preds = %144
  %164 = load i32, i32* %4, align 4
  %165 = call i32 @pdwait(i32 %164)
  %166 = icmp eq i32 %165, -1
  br i1 %166, label %167, label %169

167:                                              ; preds = %163
  %168 = call i32 @err(i32 1, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.4, i64 0, i64 0))
  br label %169

169:                                              ; preds = %167, %163
  %170 = load i32, i32* %4, align 4
  %171 = call i32 @close(i32 %170)
  br label %172

172:                                              ; preds = %169
  %173 = call i32 @exit(i32 0) #3
  unreachable
}

declare dso_local i32 @printf(i8*) #1

declare dso_local i32 @CHECK(i32) #1

declare dso_local i64 @cap_getmode(i32*) #1

declare dso_local i32 @fork(...) #1

declare dso_local i32 @err(i32, i8*) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

declare dso_local i32 @waitpid(i32, i32*, i32) #1

declare dso_local i32 @pdfork(i32*, i32) #1

declare dso_local i32 @pdwait(i32) #1

declare dso_local i32 @close(i32) #1

declare dso_local i64 @cap_enter(...) #1

declare dso_local i32 @sleep(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
