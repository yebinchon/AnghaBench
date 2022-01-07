; ModuleID = '/home/carl/AnghaBench/freebsd/usr.bin/tip/tip/extr_value.c_vassign.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.bin/tip/tip/extr_value.c_vassign.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i8*, i32 }

@WRITE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [16 x i8] c"access denied\0D\0A\00", align 1
@TMASK = common dso_local global i32 0, align 4
@ENVIRON = common dso_local global i32 0, align 4
@INIT = common dso_local global i32 0, align 4
@NOSTR = common dso_local global i8* null, align 8
@.str.1 = private unnamed_addr constant [14 x i8] c"out of core\0D\0A\00", align 1
@CHANGED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_3__*, i8*)* @vassign to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vassign(%struct.TYPE_3__* %0, i8* %1) #0 {
  %3 = alloca %struct.TYPE_3__*, align 8
  %4 = alloca i8*, align 8
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %3, align 8
  store i8* %1, i8** %4, align 8
  %5 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %6 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %5, i32 0, i32 2
  %7 = load i32, i32* %6, align 8
  %8 = load i32, i32* @WRITE, align 4
  %9 = call i32 @vaccess(i32 %7, i32 %8)
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %13, label %11

11:                                               ; preds = %2
  %12 = call i32 @printf(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0))
  br label %126

13:                                               ; preds = %2
  %14 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %15 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = load i32, i32* @TMASK, align 4
  %18 = and i32 %16, %17
  switch i32 %18, label %120 [
    i32 128, label %19
    i32 129, label %64
    i32 131, label %80
    i32 130, label %102
  ]

19:                                               ; preds = %13
  %20 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %21 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %20, i32 0, i32 1
  %22 = load i8*, i8** %21, align 8
  %23 = icmp ne i8* %22, null
  br i1 %23, label %24, label %32

24:                                               ; preds = %19
  %25 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %26 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %25, i32 0, i32 1
  %27 = load i8*, i8** %26, align 8
  %28 = load i8*, i8** %4, align 8
  %29 = call i32 @equal(i8* %27, i8* %28)
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %32

31:                                               ; preds = %24
  br label %126

32:                                               ; preds = %24, %19
  %33 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %34 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = load i32, i32* @ENVIRON, align 4
  %37 = load i32, i32* @INIT, align 4
  %38 = or i32 %36, %37
  %39 = and i32 %35, %38
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %46, label %41

41:                                               ; preds = %32
  %42 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %43 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %42, i32 0, i32 1
  %44 = load i8*, i8** %43, align 8
  %45 = call i32 @free(i8* %44)
  br label %46

46:                                               ; preds = %41, %32
  %47 = load i8*, i8** %4, align 8
  %48 = call i8* @strdup(i8* %47)
  %49 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %50 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %49, i32 0, i32 1
  store i8* %48, i8** %50, align 8
  %51 = load i8*, i8** @NOSTR, align 8
  %52 = icmp eq i8* %48, %51
  br i1 %52, label %53, label %55

53:                                               ; preds = %46
  %54 = call i32 @printf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0))
  br label %126

55:                                               ; preds = %46
  %56 = load i32, i32* @ENVIRON, align 4
  %57 = load i32, i32* @INIT, align 4
  %58 = or i32 %56, %57
  %59 = xor i32 %58, -1
  %60 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %61 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 8
  %63 = and i32 %62, %59
  store i32 %63, i32* %61, align 8
  br label %120

64:                                               ; preds = %13
  %65 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %66 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %65, i32 0, i32 1
  %67 = load i8*, i8** %66, align 8
  %68 = call i32 @number(i8* %67)
  %69 = load i8*, i8** %4, align 8
  %70 = call i32 @number(i8* %69)
  %71 = icmp eq i32 %68, %70
  br i1 %71, label %72, label %73

72:                                               ; preds = %64
  br label %126

73:                                               ; preds = %64
  %74 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %75 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %74, i32 0, i32 1
  %76 = load i8*, i8** %75, align 8
  %77 = load i8*, i8** %4, align 8
  %78 = call i32 @number(i8* %77)
  %79 = call i32 @setnumber(i8* %76, i32 %78)
  br label %120

80:                                               ; preds = %13
  %81 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %82 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %81, i32 0, i32 1
  %83 = load i8*, i8** %82, align 8
  %84 = call i32 @boolean(i8* %83)
  %85 = load i8*, i8** %4, align 8
  %86 = load i8, i8* %85, align 1
  %87 = sext i8 %86 to i32
  %88 = icmp ne i32 %87, 33
  %89 = zext i1 %88 to i32
  %90 = icmp eq i32 %84, %89
  br i1 %90, label %91, label %92

91:                                               ; preds = %80
  br label %126

92:                                               ; preds = %80
  %93 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %94 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %93, i32 0, i32 1
  %95 = load i8*, i8** %94, align 8
  %96 = load i8*, i8** %4, align 8
  %97 = load i8, i8* %96, align 1
  %98 = sext i8 %97 to i32
  %99 = icmp ne i32 %98, 33
  %100 = zext i1 %99 to i32
  %101 = call i32 @setboolean(i8* %95, i32 %100)
  br label %120

102:                                              ; preds = %13
  %103 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %104 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %103, i32 0, i32 1
  %105 = load i8*, i8** %104, align 8
  %106 = call signext i8 @character(i8* %105)
  %107 = sext i8 %106 to i32
  %108 = load i8*, i8** %4, align 8
  %109 = load i8, i8* %108, align 1
  %110 = sext i8 %109 to i32
  %111 = icmp eq i32 %107, %110
  br i1 %111, label %112, label %113

112:                                              ; preds = %102
  br label %126

113:                                              ; preds = %102
  %114 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %115 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %114, i32 0, i32 1
  %116 = load i8*, i8** %115, align 8
  %117 = load i8*, i8** %4, align 8
  %118 = load i8, i8* %117, align 1
  %119 = call i32 @setcharacter(i8* %116, i8 signext %118)
  br label %120

120:                                              ; preds = %113, %13, %92, %73, %55
  %121 = load i32, i32* @CHANGED, align 4
  %122 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %123 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %122, i32 0, i32 2
  %124 = load i32, i32* %123, align 8
  %125 = or i32 %124, %121
  store i32 %125, i32* %123, align 8
  br label %126

126:                                              ; preds = %120, %112, %91, %72, %53, %31, %11
  ret void
}

declare dso_local i32 @vaccess(i32, i32) #1

declare dso_local i32 @printf(i8*) #1

declare dso_local i32 @equal(i8*, i8*) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i8* @strdup(i8*) #1

declare dso_local i32 @number(i8*) #1

declare dso_local i32 @setnumber(i8*, i32) #1

declare dso_local i32 @boolean(i8*) #1

declare dso_local i32 @setboolean(i8*, i32) #1

declare dso_local signext i8 @character(i8*) #1

declare dso_local i32 @setcharacter(i8*, i8 signext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
