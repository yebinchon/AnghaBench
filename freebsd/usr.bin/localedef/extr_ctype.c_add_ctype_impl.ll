; ModuleID = '/home/carl/AnghaBench/freebsd/usr.bin/localedef/extr_ctype.c_add_ctype_impl.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.bin/localedef/extr_ctype.c_add_ctype_impl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32 }

@last_kw = common dso_local global i32 0, align 4
@_ISUPPER = common dso_local global i32 0, align 4
@_ISALPHA = common dso_local global i32 0, align 4
@_ISGRAPH = common dso_local global i32 0, align 4
@_ISPRINT = common dso_local global i32 0, align 4
@_ISLOWER = common dso_local global i32 0, align 4
@_ISDIGIT = common dso_local global i32 0, align 4
@_ISXDIGIT = common dso_local global i32 0, align 4
@_E4 = common dso_local global i32 0, align 4
@_ISSPACE = common dso_local global i32 0, align 4
@_ISCNTRL = common dso_local global i32 0, align 4
@_ISPUNCT = common dso_local global i32 0, align 4
@_ISBLANK = common dso_local global i32 0, align 4
@_E1 = common dso_local global i32 0, align 4
@_E2 = common dso_local global i32 0, align 4
@_E3 = common dso_local global i32 0, align 4
@_E5 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"not a valid character class\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_3__*)* @add_ctype_impl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @add_ctype_impl(%struct.TYPE_3__* %0) #0 {
  %2 = alloca %struct.TYPE_3__*, align 8
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %2, align 8
  %3 = load i32, i32* @last_kw, align 4
  switch i32 %3, label %157 [
    i32 129, label %4
    i32 136, label %16
    i32 143, label %28
    i32 140, label %38
    i32 131, label %52
    i32 141, label %60
    i32 138, label %66
    i32 133, label %74
    i32 132, label %80
    i32 128, label %90
    i32 142, label %98
    i32 134, label %106
    i32 137, label %116
    i32 139, label %126
    i32 135, label %136
    i32 130, label %146
    i32 144, label %156
  ]

4:                                                ; preds = %1
  %5 = load i32, i32* @_ISUPPER, align 4
  %6 = load i32, i32* @_ISALPHA, align 4
  %7 = or i32 %5, %6
  %8 = load i32, i32* @_ISGRAPH, align 4
  %9 = or i32 %7, %8
  %10 = load i32, i32* @_ISPRINT, align 4
  %11 = or i32 %9, %10
  %12 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %13 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = or i32 %14, %11
  store i32 %15, i32* %13, align 4
  br label %159

16:                                               ; preds = %1
  %17 = load i32, i32* @_ISLOWER, align 4
  %18 = load i32, i32* @_ISALPHA, align 4
  %19 = or i32 %17, %18
  %20 = load i32, i32* @_ISGRAPH, align 4
  %21 = or i32 %19, %20
  %22 = load i32, i32* @_ISPRINT, align 4
  %23 = or i32 %21, %22
  %24 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = or i32 %26, %23
  store i32 %27, i32* %25, align 4
  br label %159

28:                                               ; preds = %1
  %29 = load i32, i32* @_ISALPHA, align 4
  %30 = load i32, i32* @_ISGRAPH, align 4
  %31 = or i32 %29, %30
  %32 = load i32, i32* @_ISPRINT, align 4
  %33 = or i32 %31, %32
  %34 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %35 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = or i32 %36, %33
  store i32 %37, i32* %35, align 4
  br label %159

38:                                               ; preds = %1
  %39 = load i32, i32* @_ISDIGIT, align 4
  %40 = load i32, i32* @_ISGRAPH, align 4
  %41 = or i32 %39, %40
  %42 = load i32, i32* @_ISPRINT, align 4
  %43 = or i32 %41, %42
  %44 = load i32, i32* @_ISXDIGIT, align 4
  %45 = or i32 %43, %44
  %46 = load i32, i32* @_E4, align 4
  %47 = or i32 %45, %46
  %48 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %49 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = or i32 %50, %47
  store i32 %51, i32* %49, align 4
  br label %159

52:                                               ; preds = %1
  %53 = load i32, i32* @_ISSPACE, align 4
  %54 = load i32, i32* @_ISPRINT, align 4
  %55 = or i32 %53, %54
  %56 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %57 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = or i32 %58, %55
  store i32 %59, i32* %57, align 4
  br label %159

60:                                               ; preds = %1
  %61 = load i32, i32* @_ISCNTRL, align 4
  %62 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %63 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = or i32 %64, %61
  store i32 %65, i32* %63, align 4
  br label %159

66:                                               ; preds = %1
  %67 = load i32, i32* @_ISGRAPH, align 4
  %68 = load i32, i32* @_ISPRINT, align 4
  %69 = or i32 %67, %68
  %70 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %71 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  %73 = or i32 %72, %69
  store i32 %73, i32* %71, align 4
  br label %159

74:                                               ; preds = %1
  %75 = load i32, i32* @_ISPRINT, align 4
  %76 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %77 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 4
  %79 = or i32 %78, %75
  store i32 %79, i32* %77, align 4
  br label %159

80:                                               ; preds = %1
  %81 = load i32, i32* @_ISPUNCT, align 4
  %82 = load i32, i32* @_ISGRAPH, align 4
  %83 = or i32 %81, %82
  %84 = load i32, i32* @_ISPRINT, align 4
  %85 = or i32 %83, %84
  %86 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %87 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 4
  %89 = or i32 %88, %85
  store i32 %89, i32* %87, align 4
  br label %159

90:                                               ; preds = %1
  %91 = load i32, i32* @_ISXDIGIT, align 4
  %92 = load i32, i32* @_ISPRINT, align 4
  %93 = or i32 %91, %92
  %94 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %95 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 4
  %97 = or i32 %96, %93
  store i32 %97, i32* %95, align 4
  br label %159

98:                                               ; preds = %1
  %99 = load i32, i32* @_ISBLANK, align 4
  %100 = load i32, i32* @_ISSPACE, align 4
  %101 = or i32 %99, %100
  %102 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %103 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 4
  %105 = or i32 %104, %101
  store i32 %105, i32* %103, align 4
  br label %159

106:                                              ; preds = %1
  %107 = load i32, i32* @_E1, align 4
  %108 = load i32, i32* @_ISPRINT, align 4
  %109 = or i32 %107, %108
  %110 = load i32, i32* @_ISGRAPH, align 4
  %111 = or i32 %109, %110
  %112 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %113 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %112, i32 0, i32 0
  %114 = load i32, i32* %113, align 4
  %115 = or i32 %114, %111
  store i32 %115, i32* %113, align 4
  br label %159

116:                                              ; preds = %1
  %117 = load i32, i32* @_E2, align 4
  %118 = load i32, i32* @_ISPRINT, align 4
  %119 = or i32 %117, %118
  %120 = load i32, i32* @_ISGRAPH, align 4
  %121 = or i32 %119, %120
  %122 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %123 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %122, i32 0, i32 0
  %124 = load i32, i32* %123, align 4
  %125 = or i32 %124, %121
  store i32 %125, i32* %123, align 4
  br label %159

126:                                              ; preds = %1
  %127 = load i32, i32* @_E3, align 4
  %128 = load i32, i32* @_ISPRINT, align 4
  %129 = or i32 %127, %128
  %130 = load i32, i32* @_ISGRAPH, align 4
  %131 = or i32 %129, %130
  %132 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %133 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %132, i32 0, i32 0
  %134 = load i32, i32* %133, align 4
  %135 = or i32 %134, %131
  store i32 %135, i32* %133, align 4
  br label %159

136:                                              ; preds = %1
  %137 = load i32, i32* @_E4, align 4
  %138 = load i32, i32* @_ISPRINT, align 4
  %139 = or i32 %137, %138
  %140 = load i32, i32* @_ISGRAPH, align 4
  %141 = or i32 %139, %140
  %142 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %143 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %142, i32 0, i32 0
  %144 = load i32, i32* %143, align 4
  %145 = or i32 %144, %141
  store i32 %145, i32* %143, align 4
  br label %159

146:                                              ; preds = %1
  %147 = load i32, i32* @_E5, align 4
  %148 = load i32, i32* @_ISPRINT, align 4
  %149 = or i32 %147, %148
  %150 = load i32, i32* @_ISGRAPH, align 4
  %151 = or i32 %149, %150
  %152 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %153 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %152, i32 0, i32 0
  %154 = load i32, i32* %153, align 4
  %155 = or i32 %154, %151
  store i32 %155, i32* %153, align 4
  br label %159

156:                                              ; preds = %1
  br label %159

157:                                              ; preds = %1
  %158 = call i32 @errf(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0))
  br label %159

159:                                              ; preds = %157, %156, %146, %136, %126, %116, %106, %98, %90, %80, %74, %66, %60, %52, %38, %28, %16, %4
  ret void
}

declare dso_local i32 @errf(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
