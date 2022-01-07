; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_tty_ttydisc.c_ttydisc_write_oproc.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_tty_ttydisc.c_ttydisc_write_oproc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tty = type { i32, i32, i32, i32 }

@o = common dso_local global i32 0, align 4
@OPOST = common dso_local global i32 0, align 4
@ONOEOT = common dso_local global i32 0, align 4
@TAB3 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [9 x i8] c"        \00", align 1
@ONLCR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [3 x i8] c"\0D\0A\00", align 1
@ONLRET = common dso_local global i32 0, align 4
@OCRNL = common dso_local global i32 0, align 4
@ONOCR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tty*, i8)* @ttydisc_write_oproc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ttydisc_write_oproc(%struct.tty* %0, i8 signext %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.tty*, align 8
  %5 = alloca i8, align 1
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.tty* %0, %struct.tty** %4, align 8
  store i8 %1, i8* %5, align 1
  %8 = load i32, i32* @o, align 4
  %9 = load i32, i32* @OPOST, align 4
  %10 = call i32 @CMP_FLAG(i32 %8, i32 %9)
  %11 = call i32 @MPASS(i32 %10)
  %12 = load i8, i8* %5, align 1
  %13 = call i32 @CTL_VALID(i8 signext %12)
  %14 = call i32 @MPASS(i32 %13)
  %15 = load i8, i8* %5, align 1
  %16 = sext i8 %15 to i32
  switch i32 %16, label %144 [
    i32 131, label %17
    i32 130, label %27
    i32 128, label %44
    i32 129, label %80
    i32 132, label %113
  ]

17:                                               ; preds = %2
  %18 = load i32, i32* @o, align 4
  %19 = load i32, i32* @ONOEOT, align 4
  %20 = call i32 @CMP_FLAG(i32 %18, i32 %19)
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %23

22:                                               ; preds = %17
  store i32 0, i32* %3, align 4
  br label %148

23:                                               ; preds = %17
  %24 = load %struct.tty*, %struct.tty** %4, align 8
  %25 = getelementptr inbounds %struct.tty, %struct.tty* %24, i32 0, i32 3
  %26 = call i32 @ttyoutq_write_nofrag(i32* %25, i8* %5, i32 1)
  store i32 %26, i32* %3, align 4
  br label %148

27:                                               ; preds = %2
  %28 = load %struct.tty*, %struct.tty** %4, align 8
  %29 = getelementptr inbounds %struct.tty, %struct.tty* %28, i32 0, i32 3
  %30 = call i32 @ttyoutq_write_nofrag(i32* %29, i8* %5, i32 1)
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %33

32:                                               ; preds = %27
  store i32 -1, i32* %3, align 4
  br label %148

33:                                               ; preds = %27
  %34 = load %struct.tty*, %struct.tty** %4, align 8
  %35 = getelementptr inbounds %struct.tty, %struct.tty* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = icmp sgt i32 %36, 0
  br i1 %37, label %38, label %43

38:                                               ; preds = %33
  %39 = load %struct.tty*, %struct.tty** %4, align 8
  %40 = getelementptr inbounds %struct.tty, %struct.tty* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = add nsw i32 %41, -1
  store i32 %42, i32* %40, align 4
  br label %43

43:                                               ; preds = %38, %33
  store i32 0, i32* %3, align 4
  br label %148

44:                                               ; preds = %2
  %45 = load %struct.tty*, %struct.tty** %4, align 8
  %46 = getelementptr inbounds %struct.tty, %struct.tty* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = and i32 %47, 7
  %49 = sub nsw i32 8, %48
  store i32 %49, i32* %6, align 4
  %50 = load i32, i32* @o, align 4
  %51 = load i32, i32* @TAB3, align 4
  %52 = call i32 @CMP_FLAG(i32 %50, i32 %51)
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %59

54:                                               ; preds = %44
  %55 = load %struct.tty*, %struct.tty** %4, align 8
  %56 = getelementptr inbounds %struct.tty, %struct.tty* %55, i32 0, i32 3
  %57 = load i32, i32* %6, align 4
  %58 = call i32 @ttyoutq_write_nofrag(i32* %56, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i32 %57)
  store i32 %58, i32* %7, align 4
  br label %63

59:                                               ; preds = %44
  %60 = load %struct.tty*, %struct.tty** %4, align 8
  %61 = getelementptr inbounds %struct.tty, %struct.tty* %60, i32 0, i32 3
  %62 = call i32 @ttyoutq_write_nofrag(i32* %61, i8* %5, i32 1)
  store i32 %62, i32* %7, align 4
  br label %63

63:                                               ; preds = %59, %54
  %64 = load i32, i32* %7, align 4
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %67

66:                                               ; preds = %63
  store i32 -1, i32* %3, align 4
  br label %148

67:                                               ; preds = %63
  %68 = load i32, i32* %6, align 4
  %69 = load %struct.tty*, %struct.tty** %4, align 8
  %70 = getelementptr inbounds %struct.tty, %struct.tty* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  %72 = add i32 %71, %68
  store i32 %72, i32* %70, align 4
  %73 = load %struct.tty*, %struct.tty** %4, align 8
  %74 = getelementptr inbounds %struct.tty, %struct.tty* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 4
  %76 = srem i32 %75, 8
  %77 = icmp eq i32 %76, 0
  %78 = zext i1 %77 to i32
  %79 = call i32 @MPASS(i32 %78)
  store i32 0, i32* %3, align 4
  br label %148

80:                                               ; preds = %2
  %81 = load i32, i32* @o, align 4
  %82 = load i32, i32* @ONLCR, align 4
  %83 = call i32 @CMP_FLAG(i32 %81, i32 %82)
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %85, label %89

85:                                               ; preds = %80
  %86 = load %struct.tty*, %struct.tty** %4, align 8
  %87 = getelementptr inbounds %struct.tty, %struct.tty* %86, i32 0, i32 3
  %88 = call i32 @ttyoutq_write_nofrag(i32* %87, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i32 2)
  store i32 %88, i32* %7, align 4
  br label %93

89:                                               ; preds = %80
  %90 = load %struct.tty*, %struct.tty** %4, align 8
  %91 = getelementptr inbounds %struct.tty, %struct.tty* %90, i32 0, i32 3
  %92 = call i32 @ttyoutq_write_nofrag(i32* %91, i8* %5, i32 1)
  store i32 %92, i32* %7, align 4
  br label %93

93:                                               ; preds = %89, %85
  %94 = load i32, i32* %7, align 4
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %96, label %97

96:                                               ; preds = %93
  store i32 -1, i32* %3, align 4
  br label %148

97:                                               ; preds = %93
  %98 = load i32, i32* @o, align 4
  %99 = load i32, i32* @ONLCR, align 4
  %100 = load i32, i32* @ONLRET, align 4
  %101 = or i32 %99, %100
  %102 = call i32 @CMP_FLAG(i32 %98, i32 %101)
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %104, label %112

104:                                              ; preds = %97
  %105 = load %struct.tty*, %struct.tty** %4, align 8
  %106 = getelementptr inbounds %struct.tty, %struct.tty* %105, i32 0, i32 1
  store i32 0, i32* %106, align 4
  %107 = load %struct.tty*, %struct.tty** %4, align 8
  %108 = getelementptr inbounds %struct.tty, %struct.tty* %107, i32 0, i32 0
  store i32 0, i32* %108, align 4
  %109 = load %struct.tty*, %struct.tty** %4, align 8
  %110 = getelementptr inbounds %struct.tty, %struct.tty* %109, i32 0, i32 2
  %111 = call i32 @ttyinq_reprintpos_set(i32* %110)
  br label %112

112:                                              ; preds = %104, %97
  store i32 0, i32* %3, align 4
  br label %148

113:                                              ; preds = %2
  %114 = load i32, i32* @o, align 4
  %115 = load i32, i32* @OCRNL, align 4
  %116 = call i32 @CMP_FLAG(i32 %114, i32 %115)
  %117 = icmp ne i32 %116, 0
  br i1 %117, label %118, label %119

118:                                              ; preds = %113
  store i8 -127, i8* %5, align 1
  br label %119

119:                                              ; preds = %118, %113
  %120 = load i32, i32* @o, align 4
  %121 = load i32, i32* @ONOCR, align 4
  %122 = call i32 @CMP_FLAG(i32 %120, i32 %121)
  %123 = icmp ne i32 %122, 0
  br i1 %123, label %124, label %130

124:                                              ; preds = %119
  %125 = load %struct.tty*, %struct.tty** %4, align 8
  %126 = getelementptr inbounds %struct.tty, %struct.tty* %125, i32 0, i32 0
  %127 = load i32, i32* %126, align 4
  %128 = icmp eq i32 %127, 0
  br i1 %128, label %129, label %130

129:                                              ; preds = %124
  store i32 0, i32* %3, align 4
  br label %148

130:                                              ; preds = %124, %119
  %131 = load %struct.tty*, %struct.tty** %4, align 8
  %132 = getelementptr inbounds %struct.tty, %struct.tty* %131, i32 0, i32 3
  %133 = call i32 @ttyoutq_write_nofrag(i32* %132, i8* %5, i32 1)
  %134 = icmp ne i32 %133, 0
  br i1 %134, label %135, label %136

135:                                              ; preds = %130
  store i32 -1, i32* %3, align 4
  br label %148

136:                                              ; preds = %130
  %137 = load %struct.tty*, %struct.tty** %4, align 8
  %138 = getelementptr inbounds %struct.tty, %struct.tty* %137, i32 0, i32 1
  store i32 0, i32* %138, align 4
  %139 = load %struct.tty*, %struct.tty** %4, align 8
  %140 = getelementptr inbounds %struct.tty, %struct.tty* %139, i32 0, i32 0
  store i32 0, i32* %140, align 4
  %141 = load %struct.tty*, %struct.tty** %4, align 8
  %142 = getelementptr inbounds %struct.tty, %struct.tty* %141, i32 0, i32 2
  %143 = call i32 @ttyinq_reprintpos_set(i32* %142)
  store i32 0, i32* %3, align 4
  br label %148

144:                                              ; preds = %2
  %145 = load %struct.tty*, %struct.tty** %4, align 8
  %146 = getelementptr inbounds %struct.tty, %struct.tty* %145, i32 0, i32 3
  %147 = call i32 @ttyoutq_write_nofrag(i32* %146, i8* %5, i32 1)
  store i32 %147, i32* %3, align 4
  br label %148

148:                                              ; preds = %144, %136, %135, %129, %112, %96, %67, %66, %43, %32, %23, %22
  %149 = load i32, i32* %3, align 4
  ret i32 %149
}

declare dso_local i32 @MPASS(i32) #1

declare dso_local i32 @CMP_FLAG(i32, i32) #1

declare dso_local i32 @CTL_VALID(i8 signext) #1

declare dso_local i32 @ttyoutq_write_nofrag(i32*, i8*, i32) #1

declare dso_local i32 @ttyinq_reprintpos_set(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
