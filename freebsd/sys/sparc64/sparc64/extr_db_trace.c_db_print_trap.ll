; ModuleID = '/home/carl/AnghaBench/freebsd/sys/sparc64/sparc64/extr_db_trace.c_db_print_trap.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/sparc64/sparc64/extr_db_trace.c_db_print_trap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.thread = type { %struct.proc* }
%struct.proc = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i64, i32, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i64 }
%struct.trapframe = type { i32, i32*, i32, i32, i32*, i32, i32, i32, i32 }

@FALSE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [6 x i8] c"-- %s\00", align 1
@trap_msg = common dso_local global i32* null, align 8
@T_KERNEL = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [10 x i8] c" tar=%#lx\00", align 1
@.str.2 = private unnamed_addr constant [21 x i8] c" sfar=%#lx sfsr=%#lx\00", align 1
@.str.3 = private unnamed_addr constant [6 x i8] c" (%ld\00", align 1
@DB_STGY_ANY = common dso_local global i32 0, align 4
@DB_SYM_NULL = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [9 x i8] c", %s, %s\00", align 1
@.str.5 = private unnamed_addr constant [2 x i8] c")\00", align 1
@.str.6 = private unnamed_addr constant [21 x i8] c" level=%#lx pil=%#lx\00", align 1
@.str.7 = private unnamed_addr constant [15 x i8] c" %%o7=%#lx --\0A\00", align 1
@.str.8 = private unnamed_addr constant [15 x i8] c"userland() at \00", align 1
@DB_STGY_PROC = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.thread*, %struct.trapframe*, i32)* @db_print_trap to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @db_print_trap(%struct.thread* %0, %struct.trapframe* %1, i32 %2) #0 {
  %4 = alloca %struct.thread*, align 8
  %5 = alloca %struct.trapframe*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.proc*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca i64, align 8
  %19 = alloca i64, align 8
  %20 = alloca i64, align 8
  %21 = alloca i32, align 4
  store %struct.thread* %0, %struct.thread** %4, align 8
  store %struct.trapframe* %1, %struct.trapframe** %5, align 8
  store i32 %2, i32* %6, align 4
  %22 = load %struct.thread*, %struct.thread** %4, align 8
  %23 = getelementptr inbounds %struct.thread, %struct.thread* %22, i32 0, i32 0
  %24 = load %struct.proc*, %struct.proc** %23, align 8
  store %struct.proc* %24, %struct.proc** %7, align 8
  %25 = load %struct.trapframe*, %struct.trapframe** %5, align 8
  %26 = getelementptr inbounds %struct.trapframe, %struct.trapframe* %25, i32 0, i32 8
  %27 = bitcast i32* %26 to i8*
  %28 = load i32, i32* @FALSE, align 4
  %29 = call i8* @db_get_value(i8* %27, i32 4, i32 %28)
  %30 = ptrtoint i8* %29 to i64
  store i64 %30, i64* %13, align 8
  %31 = load i32*, i32** @trap_msg, align 8
  %32 = load i64, i64* %13, align 8
  %33 = load i64, i64* @T_KERNEL, align 8
  %34 = xor i64 %33, -1
  %35 = and i64 %32, %34
  %36 = getelementptr inbounds i32, i32* %31, i64 %35
  %37 = load i32, i32* %36, align 4
  %38 = call i32 (i8*, ...) @db_printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i32 %37)
  %39 = load i64, i64* %13, align 8
  %40 = load i64, i64* @T_KERNEL, align 8
  %41 = xor i64 %40, -1
  %42 = and i64 %39, %41
  switch i64 %42, label %147 [
    i64 133, label %43
    i64 135, label %52
    i64 132, label %52
    i64 129, label %52
    i64 134, label %68
    i64 131, label %68
    i64 128, label %77
    i64 130, label %131
  ]

43:                                               ; preds = %3
  %44 = load %struct.trapframe*, %struct.trapframe** %5, align 8
  %45 = getelementptr inbounds %struct.trapframe, %struct.trapframe* %44, i32 0, i32 5
  %46 = bitcast i32* %45 to i8*
  %47 = load i32, i32* @FALSE, align 4
  %48 = call i8* @db_get_value(i8* %46, i32 4, i32 %47)
  %49 = ptrtoint i8* %48 to i64
  store i64 %49, i64* %16, align 8
  %50 = load i64, i64* %16, align 8
  %51 = call i32 (i8*, ...) @db_printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0), i64 %50)
  br label %52

52:                                               ; preds = %3, %3, %3, %43
  %53 = load %struct.trapframe*, %struct.trapframe** %5, align 8
  %54 = getelementptr inbounds %struct.trapframe, %struct.trapframe* %53, i32 0, i32 7
  %55 = bitcast i32* %54 to i8*
  %56 = load i32, i32* @FALSE, align 4
  %57 = call i8* @db_get_value(i8* %55, i32 4, i32 %56)
  %58 = ptrtoint i8* %57 to i64
  store i64 %58, i64* %14, align 8
  %59 = load %struct.trapframe*, %struct.trapframe** %5, align 8
  %60 = getelementptr inbounds %struct.trapframe, %struct.trapframe* %59, i32 0, i32 6
  %61 = bitcast i32* %60 to i8*
  %62 = load i32, i32* @FALSE, align 4
  %63 = call i8* @db_get_value(i8* %61, i32 4, i32 %62)
  %64 = ptrtoint i8* %63 to i64
  store i64 %64, i64* %15, align 8
  %65 = load i64, i64* %14, align 8
  %66 = load i64, i64* %15, align 8
  %67 = call i32 (i8*, ...) @db_printf(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0), i64 %65, i64 %66)
  br label %148

68:                                               ; preds = %3, %3
  %69 = load %struct.trapframe*, %struct.trapframe** %5, align 8
  %70 = getelementptr inbounds %struct.trapframe, %struct.trapframe* %69, i32 0, i32 5
  %71 = bitcast i32* %70 to i8*
  %72 = load i32, i32* @FALSE, align 4
  %73 = call i8* @db_get_value(i8* %71, i32 4, i32 %72)
  %74 = ptrtoint i8* %73 to i64
  store i64 %74, i64* %16, align 8
  %75 = load i64, i64* %16, align 8
  %76 = call i32 (i8*, ...) @db_printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0), i64 %75)
  br label %148

77:                                               ; preds = %3
  %78 = load %struct.trapframe*, %struct.trapframe** %5, align 8
  %79 = getelementptr inbounds %struct.trapframe, %struct.trapframe* %78, i32 0, i32 4
  %80 = load i32*, i32** %79, align 8
  %81 = getelementptr inbounds i32, i32* %80, i64 1
  %82 = bitcast i32* %81 to i8*
  %83 = load i32, i32* @FALSE, align 4
  %84 = call i8* @db_get_value(i8* %82, i32 4, i32 %83)
  %85 = ptrtoint i8* %84 to i64
  store i64 %85, i64* %19, align 8
  %86 = load i64, i64* %19, align 8
  %87 = call i32 (i8*, ...) @db_printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0), i64 %86)
  %88 = load i64, i64* %19, align 8
  %89 = icmp uge i64 %88, 0
  br i1 %89, label %90, label %130

90:                                               ; preds = %77
  %91 = load i64, i64* %19, align 8
  %92 = load %struct.proc*, %struct.proc** %7, align 8
  %93 = getelementptr inbounds %struct.proc, %struct.proc* %92, i32 0, i32 0
  %94 = load %struct.TYPE_4__*, %struct.TYPE_4__** %93, align 8
  %95 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %94, i32 0, i32 0
  %96 = load i64, i64* %95, align 8
  %97 = icmp ult i64 %91, %96
  br i1 %97, label %98, label %130

98:                                               ; preds = %90
  %99 = load %struct.proc*, %struct.proc** %7, align 8
  %100 = getelementptr inbounds %struct.proc, %struct.proc* %99, i32 0, i32 0
  %101 = load %struct.TYPE_4__*, %struct.TYPE_4__** %100, align 8
  %102 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %101, i32 0, i32 2
  %103 = load %struct.TYPE_3__*, %struct.TYPE_3__** %102, align 8
  %104 = load i64, i64* %19, align 8
  %105 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %103, i64 %104
  %106 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %105, i32 0, i32 0
  %107 = load i64, i64* %106, align 8
  %108 = inttoptr i64 %107 to i8*
  store i8* %108, i8** %11, align 8
  %109 = load i8*, i8** %11, align 8
  %110 = load i32, i32* @DB_STGY_ANY, align 4
  %111 = call i32 @db_search_symbol(i8* %109, i32 %110, i32* %10)
  store i32 %111, i32* %9, align 4
  %112 = load i32, i32* %9, align 4
  %113 = load i32, i32* @DB_SYM_NULL, align 4
  %114 = icmp ne i32 %112, %113
  br i1 %114, label %115, label %128

115:                                              ; preds = %98
  %116 = load i32, i32* %10, align 4
  %117 = icmp eq i32 %116, 0
  br i1 %117, label %118, label %128

118:                                              ; preds = %115
  %119 = load i32, i32* %9, align 4
  %120 = call i32 @db_symbol_values(i32 %119, i8** %8, i32* null)
  %121 = load %struct.proc*, %struct.proc** %7, align 8
  %122 = getelementptr inbounds %struct.proc, %struct.proc* %121, i32 0, i32 0
  %123 = load %struct.TYPE_4__*, %struct.TYPE_4__** %122, align 8
  %124 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %123, i32 0, i32 1
  %125 = load i32, i32* %124, align 8
  %126 = load i8*, i8** %8, align 8
  %127 = call i32 (i8*, ...) @db_printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i64 0, i64 0), i32 %125, i8* %126)
  br label %128

128:                                              ; preds = %118, %115, %98
  %129 = call i32 (i8*, ...) @db_printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i64 0, i64 0))
  br label %130

130:                                              ; preds = %128, %90, %77
  br label %148

131:                                              ; preds = %3
  %132 = load %struct.trapframe*, %struct.trapframe** %5, align 8
  %133 = getelementptr inbounds %struct.trapframe, %struct.trapframe* %132, i32 0, i32 3
  %134 = bitcast i32* %133 to i8*
  %135 = load i32, i32* @FALSE, align 4
  %136 = call i8* @db_get_value(i8* %134, i32 4, i32 %135)
  %137 = ptrtoint i8* %136 to i64
  store i64 %137, i64* %17, align 8
  %138 = load %struct.trapframe*, %struct.trapframe** %5, align 8
  %139 = getelementptr inbounds %struct.trapframe, %struct.trapframe* %138, i32 0, i32 2
  %140 = bitcast i32* %139 to i8*
  %141 = load i32, i32* @FALSE, align 4
  %142 = call i8* @db_get_value(i8* %140, i32 4, i32 %141)
  %143 = ptrtoint i8* %142 to i64
  store i64 %143, i64* %18, align 8
  %144 = load i64, i64* %17, align 8
  %145 = load i64, i64* %18, align 8
  %146 = call i32 (i8*, ...) @db_printf(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.6, i64 0, i64 0), i64 %144, i64 %145)
  br label %148

147:                                              ; preds = %3
  br label %148

148:                                              ; preds = %147, %131, %130, %68, %52
  %149 = load %struct.trapframe*, %struct.trapframe** %5, align 8
  %150 = getelementptr inbounds %struct.trapframe, %struct.trapframe* %149, i32 0, i32 1
  %151 = load i32*, i32** %150, align 8
  %152 = getelementptr inbounds i32, i32* %151, i64 7
  %153 = bitcast i32* %152 to i8*
  %154 = load i32, i32* @FALSE, align 4
  %155 = call i8* @db_get_value(i8* %153, i32 4, i32 %154)
  %156 = ptrtoint i8* %155 to i64
  store i64 %156, i64* %20, align 8
  %157 = load i64, i64* %20, align 8
  %158 = call i32 (i8*, ...) @db_printf(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.7, i64 0, i64 0), i64 %157)
  %159 = load i64, i64* %13, align 8
  %160 = load i64, i64* @T_KERNEL, align 8
  %161 = and i64 %159, %160
  %162 = icmp eq i64 %161, 0
  %163 = zext i1 %162 to i32
  store i32 %163, i32* %21, align 4
  %164 = load i32, i32* %21, align 4
  %165 = icmp ne i32 %164, 0
  br i1 %165, label %166, label %181

166:                                              ; preds = %148
  %167 = load %struct.trapframe*, %struct.trapframe** %5, align 8
  %168 = getelementptr inbounds %struct.trapframe, %struct.trapframe* %167, i32 0, i32 0
  %169 = bitcast i32* %168 to i8*
  %170 = load i32, i32* @FALSE, align 4
  %171 = call i8* @db_get_value(i8* %169, i32 4, i32 %170)
  store i8* %171, i8** %12, align 8
  %172 = call i32 (i8*, ...) @db_printf(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.8, i64 0, i64 0))
  %173 = load i8*, i8** %12, align 8
  %174 = load i32, i32* @DB_STGY_PROC, align 4
  %175 = call i32 @db_printsym(i8* %173, i32 %174)
  %176 = call i32 (i8*, ...) @db_printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.9, i64 0, i64 0))
  %177 = load %struct.thread*, %struct.thread** %4, align 8
  %178 = load %struct.trapframe*, %struct.trapframe** %5, align 8
  %179 = load i32, i32* %6, align 4
  %180 = call i32 @db_utrace(%struct.thread* %177, %struct.trapframe* %178, i32 %179)
  br label %181

181:                                              ; preds = %166, %148
  %182 = load i32, i32* %21, align 4
  ret i32 %182
}

declare dso_local i8* @db_get_value(i8*, i32, i32) #1

declare dso_local i32 @db_printf(i8*, ...) #1

declare dso_local i32 @db_search_symbol(i8*, i32, i32*) #1

declare dso_local i32 @db_symbol_values(i32, i8**, i32*) #1

declare dso_local i32 @db_printsym(i8*, i32) #1

declare dso_local i32 @db_utrace(%struct.thread*, %struct.trapframe*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
